package com.ls.ods_batchs.repository;

import com.ls.ods_batchs.entity.ImportedTableColumn;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ImportedTableColumnRepository extends JpaRepository<ImportedTableColumn, Long> {

    List<ImportedTableColumn> findByTableId(Long tableId);

    void deleteByTableId(Long tableId);
}


