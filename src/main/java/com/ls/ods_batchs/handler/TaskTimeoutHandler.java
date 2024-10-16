//package com.ls.ods_batchs.handler;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.redis.connection.stream.PendingMessagesSummary;
//import org.springframework.data.redis.core.RedisTemplate;
//import org.springframework.scheduling.annotation.EnableScheduling;
//import org.springframework.scheduling.annotation.Scheduled;
//
//@Configuration
//@EnableScheduling
//public class TaskTimeoutHandler {
//
//    @Autowired
//    private RedisTemplate<String, String> redisTemplate;
//
//    private static final String STREAM_KEY = "taskStream";
//    private static final String GROUP_NAME = "taskGroup";
//    private static final int TIMEOUT_THRESHOLD = 1800000;  // 30 minutes in milliseconds
//    private static final int MAX_RETRY_COUNT = 3;
//
//    // 定期检查挂起的超时消息并重新分配或删除
//    @Scheduled(fixedDelay = 10000)  // 每10秒检查一次
//    public void checkPendingMessages() {
//        PendingMessagesSummary pendingMessagesSummary = redisTemplate.opsForStream().pending(STREAM_KEY, GROUP_NAME);
//
//        if (pendingMessagesSummary != null && pendingMessagesSummary.getTotalPendingMessages() > 0) {
////            List<PendingMessage> pendingMessages = redisTemplate.opsForStream().pending(STREAM_KEY, GROUP_NAME);
////
////            for (PendingMessage pendingMessage : pendingMessages) {
////                long timeSincePending = pendingMessage.getElapsedTimeSinceDelivery().toMillis();
////
////                if (timeSincePending > TIMEOUT_THRESHOLD) {
////                    System.out.println("Message ID: " + pendingMessage.getId() + " has been pending for " + timeSincePending + "ms. Reassigning...");
////
////                    if (pendingMessage.getTotalDeliveryCount() > MAX_RETRY_COUNT) {
////                        System.out.println("Message ID: " + pendingMessage.getId() + " exceeded max retry count. Deleting message...");
////                        redisTemplate.opsForStream().delete(STREAM_KEY, pendingMessage.getId());
////                    } else {
////                        // 使用 XCLAIM 将消息重新分配给其他消费者
////                        redisTemplate.opsForStream().claim(STREAM_KEY,
////                                org.springframework.data.redis.connection.stream.Consumer.from(GROUP_NAME, "reassign-consumer"),
////                                pendingMessage.getId());
////                    }
////                }
////            }
//        }
//    }
//}
