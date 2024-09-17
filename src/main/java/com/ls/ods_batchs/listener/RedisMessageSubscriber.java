//package com.ls.ods_batchs.listener;
//
//import org.springframework.data.redis.connection.Message;
//import org.springframework.data.redis.connection.MessageListener;
//import org.springframework.stereotype.Component;
//
//@Component
//public class RedisMessageSubscriber implements MessageListener {
//
//    @Override
//    public void onMessage(Message message, byte[] pattern) {
//        // 处理接收到的消息
//        String topic = new String(pattern);
//        String body = new String(message.getBody());
//        System.out.println("Received message: " + body + " from topic: " + topic);
//    }
//}
