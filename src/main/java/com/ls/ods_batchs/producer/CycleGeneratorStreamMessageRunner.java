package com.ls.ods_batchs.producer;

import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/**
 * 周期性的向流中产生消息
 */
@Component
public class CycleGeneratorStreamMessageRunner implements ApplicationRunner {

    private final StreamProducer streamProducer;

    @Value("${consumer.streamKey}")
    private String streamKey;

    public CycleGeneratorStreamMessageRunner(StreamProducer streamProducer) {
        this.streamProducer = streamProducer;
    }

    @Override
    public void run(ApplicationArguments args) {
        Executors.newSingleThreadScheduledExecutor()
                .scheduleAtFixedRate(() -> streamProducer.sendRecord(streamKey),
                        0, 1, TimeUnit.SECONDS);
    }
}