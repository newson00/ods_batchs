package com.ls.ods_batchs.listener;

import com.ls.ods_batchs.entity.Book;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.connection.stream.ObjectRecord;
import org.springframework.data.redis.connection.stream.RecordId;
import org.springframework.data.redis.connection.stream.StreamRecords;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.stream.StreamListener;
import org.springframework.stereotype.Component;

import java.util.concurrent.atomic.AtomicInteger;

@Component
@Slf4j
public class RedisStreamListener implements StreamListener<String, ObjectRecord<String, Book>> {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    private final AtomicInteger bookCount = new AtomicInteger(0);

    @Value("${consumer.streamGroup}")
    private String streamGroup;

    @Value("${consumer.maxRetryCount}")
    private int maxRetryCount;

    @Override
    public void onMessage(ObjectRecord<String, Book> message) {
        // 处理接收到的 Book 对象
        Book book = message.getValue();
        System.out.println("Received message: " + book);
        int retryCount = book.getRetryCount();
        try {

            // 在这里添加你的业务逻辑处理代码，例如存储数据或进一步操作
            boolean success = processBook(book);

            // 手动 ACK 消息
//        redisTemplate.opsForStream().acknowledge(Cosntants.STREAM_KEY_001, Cosntants.STREAM_GROUP_001,message.getId());
            redisTemplate.opsForStream().acknowledge(streamGroup,message);
            if (success) {
                System.out.println("Book processed successfully: " + book.getTitle());
            } else {
                System.err.println("Book processing failed: " + book.getTitle());
            }

            int totalBooks = bookCount.incrementAndGet();
            log.info("累计消费的消息数:[{}]", totalBooks);

        }catch (Exception e){
            e.printStackTrace();
            // 增加重试次数
            book.setRetryCount(retryCount + 1);

            if (retryCount >= maxRetryCount) {
                // 将消息移到死信队列，或记录日志，或进行手动处理
                handleDeadLetter(message);
            } else {
                // 重新发布消息
                redisTemplate.opsForStream().add(StreamRecords.newRecord()
                        .in("stream-001")
                        .ofObject(book)
                        .withId(RecordId.autoGenerate()));
            }
        }
    }

    private boolean processBook(Book book) {
        // 模拟处理逻辑
        try {
            System.out.println("1111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
            // 假设处理成功
            return true;
        } catch (Exception e) {
            // 处理失败
            return false;
        }
    }

    public void handleDeadLetter(ObjectRecord<String, Book> message) {
        redisTemplate.opsForStream().add(StreamRecords.newRecord()
                .in("dead-letter-queue")
                .ofObject(message.getValue())
                .withId(RecordId.autoGenerate()));
    }

}
