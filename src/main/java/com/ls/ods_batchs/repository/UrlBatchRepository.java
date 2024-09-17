package com.ls.ods_batchs.repository;

import com.ls.ods_batchs.entity.UrlBatch;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface UrlBatchRepository extends JpaRepository<UrlBatch, String>, JpaSpecificationExecutor<UrlBatch> {
}
