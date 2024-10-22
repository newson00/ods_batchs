package com.ls.ods_batchs.producer;

import com.ls.ods_batchs.entity.Book;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.stream.ObjectRecord;
import org.springframework.data.redis.connection.stream.RecordId;
import org.springframework.data.redis.connection.stream.StreamRecords;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.concurrent.atomic.AtomicInteger;

@Component
@RequiredArgsConstructor
@Slf4j
public class StreamProducer {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    private final AtomicInteger bookCount = new AtomicInteger(0);

    public void sendRecord(String streamKey) {
        Book book = Book.create();
        log.info("产生一条消息的信息:[{}]", book);

        ObjectRecord<String, Book> record = StreamRecords.newRecord()
                .in(streamKey)
                .ofObject(book)
                .withId(RecordId.autoGenerate());

        RecordId recordId = redisTemplate.opsForStream()
                .add(record);

        log.info("返回的record-id:[{}]", recordId);

        int totalBooks = bookCount.incrementAndGet();
        log.info("累计生产的消息数:[{}]", totalBooks);
    }
}
