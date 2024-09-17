package com.ls.ods_batchs.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

@Configuration
public class ThreadPoolConfig {

    @Bean
    public Executor taskExecutor() {
        return Executors.newFixedThreadPool(3);  // 最大3个线程同时处理任务
    }
}

