package com.ls.ods_batchs.Consumer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.stream.*;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

@Configuration
@EnableScheduling
public class TaskConsumer {

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    @Qualifier("taskExecutor")
    @Autowired
    private Executor taskExecutor;

    private static final String STREAM_KEY = "taskStream";
    private static final String GROUP_NAME = "taskGroup";
    private static final String CONSUMER_NAME = "consumer-" + UUID.randomUUID().toString();
    private static final int TIMEOUT_THRESHOLD = 1800000;  // 30 minutes in milliseconds

    // 定期从 Redis Stream 中读取消息，并使用线程池处理
    @Scheduled(fixedDelay = 5000)  // 每5秒轮询一次
    public void pollStreamMessages() {
        // 检查线程池是否有空闲线程
        if (hasAvailableThreads()) {
//            List<MapRecord<String, String, String>> messages =
            List<ObjectRecord<String, MapRecord>> messages = redisTemplate.opsForStream().read(
                    MapRecord.class,
                    Consumer.from(GROUP_NAME, CONSUMER_NAME),
                    StreamOffset.create(STREAM_KEY, ReadOffset.lastConsumed())
            );

            if (messages != null && !messages.isEmpty()) {
                for (ObjectRecord<String, MapRecord> record : messages) {
//                    String recordId =
                    RecordId id = record.getId();// 获取记录 ID
                    MapRecord mapRecord = record.getValue(); // 获取记录值（字段及其值）

                    // 处理记录
//                    System.out.println("Record ID: " + recordId);
//                    for (Map.Entry<String, String> entry : mapRecord.getValue().entrySet()) {
//                        System.out.println("Field: " + entry.getKey() + ", Value: " + entry.getValue());
//                    }
                }
//                for (MapRecord<String, String, String> message : messages) {
//                    taskExecutor.execute(() -> {
//                        boolean isProcessed = processMessage(message);
//                        if (isProcessed) {
//                            // 处理成功，确认消息
//                            redisTemplate.opsForStream().acknowledge(GROUP_NAME, message);
//                        } else {
//                            System.out.println("Task failed or timed out, will retry.");
//                        }
//                    });
//                }
            }
        } else {
            System.out.println("Thread pool is full, skipping message retrieval.");
        }
    }

    // 检查线程池是否有空闲线程
    private boolean hasAvailableThreads() {
        if (taskExecutor instanceof ThreadPoolExecutor) {
            ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) taskExecutor;
            return threadPoolExecutor.getActiveCount() < threadPoolExecutor.getMaximumPoolSize();
        }
        return false;
    }

    // 处理每条消息
    private boolean processMessage(MapRecord<String, String, String> message) {
        String taskId = message.getValue().get("taskId");
        String taskDetails = message.getValue().get("taskDetails");

        try {
            System.out.println("Processing task: " + taskId + ", details: " + taskDetails);
            Thread.sleep(10000);  // 模拟任务处理时间
            System.out.println("Task " + taskId + " processed successfully.");
            return true;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            System.err.println("Task processing interrupted for taskId: " + taskId);
            return false;
        }
    }
}
