package com.ls.ods_batchs.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "imported_tables")
public class ImportedTable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String tableName;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Timestamp importTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Timestamp updateTime;

    @PrePersist
    protected void onCreate() {
        Timestamp currentTime = new Timestamp(System.currentTimeMillis());
        this.importTime = currentTime;
        this.updateTime = currentTime;
    }

    @PreUpdate
    protected void onUpdate() {
        this.updateTime = new Timestamp(System.currentTimeMillis());
    }

    // Getters and Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public Timestamp getImportTime() {
        return importTime;
    }

    public void setImportTime(Timestamp importTime) {
        this.importTime = importTime;
    }

    public Timestamp getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
    }

}
