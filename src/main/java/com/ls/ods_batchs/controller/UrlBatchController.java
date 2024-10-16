package com.ls.ods_batchs.controller;

import com.ls.ods_batchs.entity.Book;
import com.ls.ods_batchs.entity.Cosntants;
import com.ls.ods_batchs.entity.UrlBatch;
import com.ls.ods_batchs.service.UrlBatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.redis.connection.stream.ObjectRecord;
import org.springframework.data.redis.connection.stream.RecordId;
import org.springframework.data.redis.connection.stream.StreamRecords;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class UrlBatchController {

    @Autowired
    private UrlBatchService urlBatchService;

    @GetMapping("/url-batches")
    public String getUrlBatches(Model model,
                                @RequestParam(value = "page", defaultValue = "0") int page,
                                @RequestParam(value = "size", defaultValue = "10") int size,
                                @RequestParam(value = "id1", required = false) String id1,
                                @RequestParam(value = "fileName", required = false) String fileName,
                                @RequestParam(value = "jyrq", required = false) String jyrq,
                                @RequestParam(value = "status", required = false) String status) {
        Page<UrlBatch> urlBatchPage = urlBatchService.getUrlBatches(page, size, id1, fileName, jyrq, status);
        model.addAttribute("urlBatchPage", urlBatchPage);
        model.addAttribute("id1", id1);
        model.addAttribute("fileName", fileName);
        model.addAttribute("jyrq", jyrq);
        model.addAttribute("status", status);
        model.addAttribute("size", size);  // 添加分页大小的属性
        return "url_batches";
    }

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    @PostMapping("/rerun-batch")
    public ResponseEntity<String> rerunBatch(@RequestBody Map<String, String> request) {
        String id1 = request.get("id1");
        String fileUrl = request.get("fileUrl");

        Map<String, String> message = new HashMap<>();
        message.put("id", id1);
        message.put("fileUrl", fileUrl);

        Book book = Book.create();


        ObjectRecord<String, Book> taskStream = StreamRecords.newRecord()
                .in(Cosntants.STREAM_KEY_001)  // 这里是 Stream 名称
                .ofObject(book)
                .withId(RecordId.autoGenerate());

        // 使用 Redis Stream 发布消息
        RecordId recordId = redisTemplate.opsForStream().add(taskStream);

        return ResponseEntity.ok("Task " + id1 + " published with record ID: " + recordId);

    }
}