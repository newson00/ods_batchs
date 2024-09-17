package com.ls.ods_batchs.service;

import com.ls.ods_batchs.entity.UrlBatch;
import com.ls.ods_batchs.repository.UrlBatchRepository;
import com.ls.ods_batchs.specification.UrlBatchSpecification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
public class UrlBatchService {

    @Autowired
    private UrlBatchRepository urlBatchRepository;

    public Page<UrlBatch> getUrlBatches(int page, int size, String id1, String fileName, String jyrq, String status) {
        return urlBatchRepository.findAll(
                UrlBatchSpecification.getUrlBatchSpecification(id1, fileName, jyrq, status),
                PageRequest.of(page, size)
        );
    }
}


