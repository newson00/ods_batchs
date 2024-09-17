package com.ls.ods_batchs.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Entity
@Table(name = "url_batch")
public class UrlBatch {

    @Id
    private String id1;
    private String key1;
    private String fileUrl;
    private String fileName;
    private String jyrq;
    private String insertTime;
    private String updateTime;
    private String status;
}
