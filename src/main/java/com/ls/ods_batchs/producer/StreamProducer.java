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

@Component
@RequiredArgsConstructor
@Slf4j
public class StreamProducer {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    public void sendRecord(String streamKey) {
        Book book = Book.create();
        log.info("产生一本书的信息:[{}]", book);

        ObjectRecord<String, Book> record = StreamRecords.newRecord()
                .in(streamKey)
                .ofObject(book)
                .withId(RecordId.autoGenerate());

        RecordId recordId = redisTemplate.opsForStream()
                .add(record);

        log.info("返回的record-id:[{}]", recordId);
    }
}
