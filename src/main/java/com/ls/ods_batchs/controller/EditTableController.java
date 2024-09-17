package com.ls.ods_batchs.controller;
import com.ls.ods_batchs.entity.ImportedTable;
import com.ls.ods_batchs.entity.ImportedTableColumn;
import com.ls.ods_batchs.repository.ImportedTableColumnRepository;
import com.ls.ods_batchs.repository.ImportedTableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.util.List;

@Controller
public class EditTableController {

    @Autowired
    private ImportedTableRepository importedTableRepository;

    @Autowired
    private ImportedTableColumnRepository importedTableColumnRepository;

    @GetMapping("/edit-table/{id}")
    public String showEditTablePage(@PathVariable Long id, Model model) {
        ImportedTable table = importedTableRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid table Id:" + id));

        List<ImportedTableColumn> columns = importedTableColumnRepository.findByTableId(id);

        model.addAttribute("table", table);
        model.addAttribute("columns", columns);
        return "edit_table";
    }

    @Transactional
    @PostMapping("/edit-table/{id}")
    public String updateTable(@PathVariable Long id,
                              @RequestParam String tableName,
                              @RequestParam List<String> columnNames,
                              @RequestParam List<String> columnTypes,
                              @RequestParam List<Integer> columnLengths) {

        ImportedTable table = importedTableRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid table Id:" + id));

        // Update table name
        table.setTableName(tableName);
        table.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        importedTableRepository.save(table);

        // Clear existing columns and add new ones
        importedTableColumnRepository.deleteByTableId(id);

        for (int i = 0; i < columnNames.size(); i++) {
            ImportedTableColumn column = new ImportedTableColumn();
            column.setTableId(id);
            column.setColumnName(columnNames.get(i));
            column.setColumnType(columnTypes.get(i));
            column.setColumnLength(columnLengths.get(i));
            importedTableColumnRepository.save(column);
        }

        return "redirect:/import/page";
    }


}


