package com.ls.ods_batchs.listener;

import com.ls.ods_batchs.entity.Book;
import org.springframework.data.redis.connection.stream.ObjectRecord;
import org.springframework.data.redis.stream.StreamListener;
import org.springframework.stereotype.Component;

@Component
public class RedisStreamListener implements StreamListener<String, ObjectRecord<String, Book>> {

    @Override
    public void onMessage(ObjectRecord<String, Book> message) {
        // 处理接收到的 Book 对象
        Book book = message.getValue();
        System.out.println("Received Book message: " + book);

        // 在这里添加你的业务逻辑处理代码，例如存储数据或进一步操作
        boolean success = processBook(book);

        if (success) {
            System.out.println("Book processed successfully: " + book.getTitle());
        } else {
            System.err.println("Book processing failed: " + book.getTitle());
        }
    }

    private boolean processBook(Book book) {
        // 模拟处理逻辑
        try {
            System.out.println("1111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
            // 假设处理成功
            return true;
        } catch (Exception e) {
            // 处理失败
            return false;
        }
    }
}
