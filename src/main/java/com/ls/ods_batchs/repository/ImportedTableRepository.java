package com.ls.ods_batchs.repository;

import com.ls.ods_batchs.entity.ImportedTable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImportedTableRepository extends JpaRepository<ImportedTable, Long> {
}