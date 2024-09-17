//package com.ls.ods_batchs.config;
//
//import com.ls.ods_batchs.listener.RedisMessageSubscriber;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.redis.connection.RedisConnectionFactory;
//import org.springframework.data.redis.listener.PatternTopic;
//import org.springframework.data.redis.listener.RedisMessageListenerContainer;
//import org.springframework.data.redis.listener.adapter.MessageListenerAdapter;
//
//@Configuration
//public class RedisConfig {
//
//    @Bean
//    RedisMessageListenerContainer container(RedisConnectionFactory connectionFactory,
//                                            MessageListenerAdapter listenerAdapter) {
//        RedisMessageListenerContainer container = new RedisMessageListenerContainer();
//        container.setConnectionFactory(connectionFactory);
//        // 订阅多个频道
//        container.addMessageListener(listenerAdapter, new PatternTopic("channel1"));
//        container.addMessageListener(listenerAdapter, new PatternTopic("channel2"));
//        return container;
//    }
//
//    @Bean
//    MessageListenerAdapter listenerAdapter(RedisMessageSubscriber receiver) {
//        return new MessageListenerAdapter(receiver, "onMessage");
//    }
//}
