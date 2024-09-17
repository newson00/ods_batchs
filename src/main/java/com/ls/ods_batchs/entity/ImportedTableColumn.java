package com.ls.ods_batchs.entity;

import javax.persistence.*;

@Entity
@Table(name = "imported_table_columns")
public class ImportedTableColumn {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long tableId;  // 替代之前的 ImportedTable 对象，用来手动维护关系

    private String columnName;

    private String columnType;

    private Integer columnLength;

    // Getters and Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTableId() {
        return tableId;
    }

    public void setTableId(Long tableId) {
        this.tableId = tableId;
    }

    public String getColumnName() {
        return columnName;
    }

    public void setColumnName(String columnName) {
        this.columnName = columnName;
    }

    public String getColumnType() {
        return columnType;
    }

    public void setColumnType(String columnType) {
        this.columnType = columnType;
    }

    public Integer getColumnLength() {
        return columnLength;
    }

    public void setColumnLength(Integer columnLength) {
        this.columnLength = columnLength;
    }
}