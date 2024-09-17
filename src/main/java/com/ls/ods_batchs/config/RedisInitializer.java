package com.ls.ods_batchs.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

@Component
public class RedisInitializer implements CommandLineRunner {

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    private static final String STREAM_KEY = "taskStream";
    private static final String GROUP_NAME = "taskGroup";

    @Override
    public void run(String... args) throws Exception {
        // 创建消费者组
        try {
            redisTemplate.opsForStream().createGroup(STREAM_KEY, GROUP_NAME);
            System.out.println("Consumer group created.");
        } catch (Exception e) {
            System.out.println("Consumer group already exists.");
        }
    }
}
