//package com.ls.ods_batchs.producer;
//
//import com.ls.ods_batchs.entity.Cosntants;
//import lombok.AllArgsConstructor;
//import org.springframework.boot.ApplicationArguments;
//import org.springframework.boot.ApplicationRunner;
//import org.springframework.stereotype.Component;
//
//import java.util.concurrent.Executors;
//import java.util.concurrent.TimeUnit;
//
///**
// * 周期性的向流中产生消息
// */
//@Component
//@AllArgsConstructor
//public class CycleGeneratorStreamMessageRunner implements ApplicationRunner {
//
//    private final StreamProducer streamProducer;
//
//    @Override
//    public void run(ApplicationArguments args) {
//        Executors.newSingleThreadScheduledExecutor()
//                .scheduleAtFixedRate(() -> streamProducer.sendRecord(Cosntants.STREAM_KEY_001),
//                        0, 1, TimeUnit.SECONDS);
//    }
//}