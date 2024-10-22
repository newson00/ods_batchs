package com.ls.ods_batchs.consumer;

import com.ls.ods_batchs.entity.Book;
import com.ls.ods_batchs.listener.RedisStreamListener;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.connection.stream.*;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StreamOperations;
import org.springframework.data.redis.stream.StreamMessageListenerContainer;
import org.springframework.data.redis.stream.Subscription;
import org.springframework.stereotype.Component;

import java.time.Duration;
import java.util.concurrent.Executors;

@Component
@Slf4j
public class RedisStreamConsumer {

    private final RedisTemplate<String, Object> redisTemplate;

    private final RedisStreamListener redisStreamListener;

    @Value("${consumer.streamKey}")
    private String streamKey;

    @Value("${consumer.streamGroup}")
    private String streamGroup;

    public RedisStreamConsumer(RedisTemplate<String, Object> redisTemplate, RedisStreamListener redisStreamListener) {
        this.redisTemplate = redisTemplate;
        this.redisStreamListener = redisStreamListener;
        createConsumerGroupIfNotExists();
    }

    private void createConsumerGroupIfNotExists() {
        StreamOperations<String, Object, Object> stringObjectObjectStreamOperations = redisTemplate.opsForStream();
        try {
            // 创建消费者组（如果不存在）
            stringObjectObjectStreamOperations.createGroup(streamKey, streamGroup);
            System.out.println("Consumer group created: " + streamGroup);
        } catch (Exception e) {
            System.out.println("Consumer group already exists or error: " + e.getMessage());
        }
    }
    @Bean
    public StreamMessageListenerContainer<String, ObjectRecord<String, Book>> streamMessageListenerContainer() {
        // 创建 StreamMessageListenerContainer 选项
        StreamMessageListenerContainer.StreamMessageListenerContainerOptions<String, ObjectRecord<String, Book>> options =
                StreamMessageListenerContainer.StreamMessageListenerContainerOptions.builder()
                        .batchSize(10)  // 每次最多处理10条消息
                        .pollTimeout(Duration.ofSeconds(2))  // 轮询超时时间
                        .targetType(Book.class)  // 设置目标类型为 Book
                        .executor(Executors.newFixedThreadPool(3))
                        .build();

        // 创建 StreamMessageListenerContainer
        StreamMessageListenerContainer<String, ObjectRecord<String, Book>> container =
                StreamMessageListenerContainer.create(redisTemplate.getConnectionFactory(), options);

        // 消费者组和消费者的名称
        Consumer consumer = Consumer.from(streamGroup, "consumer-1");

//        第二台机器
//        Consumer consumer = Consumer.from("mygroup", "consumer-2");


        // 配置监听器，使用分组消费模式
        Subscription subscription = container.receive(
                consumer,
                StreamOffset.create(streamKey, ReadOffset.lastConsumed()),  // 从最后已消费的消息开始
                redisStreamListener  // 使用我们自定义的消息处理器
        );

        // 启动容器
        container.start();

        return container;
    }
}

