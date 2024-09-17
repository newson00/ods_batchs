package com.ls.ods_batchs.controller;

import com.ls.ods_batchs.entity.ImportedTable;
import com.ls.ods_batchs.entity.ImportedTableColumn;
import com.ls.ods_batchs.repository.ImportedTableColumnRepository;
import com.ls.ods_batchs.repository.ImportedTableRepository;
import com.ls.ods_batchs.service.ImportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/import")
public class ImportController {

    @Autowired
    private ImportService importService;

    @Autowired
    private ImportedTableRepository tableRepository;

    @Autowired
    private ImportedTableColumnRepository columnRepository;

    @PostMapping("/upload")
    public ResponseEntity<?> uploadFile(@RequestParam("file") MultipartFile file) {
        try {
            importService.importExcel(file);
            return ResponseEntity.ok("File imported successfully.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to import file.");
        }
    }

    @GetMapping("/tables")
    public List<ImportedTable> getAllTables() {
        return tableRepository.findAll();
    }

    @GetMapping("/tables/{id}")
    public List<ImportedTableColumn> getTableColumns(@PathVariable Long id) {
        return columnRepository.findByTableId(id);
    }

    @PutMapping("/tables/{id}")
    public ResponseEntity<?> updateTable(@PathVariable Long id, @RequestBody ImportedTable updatedTable) {
        Optional<ImportedTable> existingTable = tableRepository.findById(id);
        if (existingTable.isPresent()) {
            ImportedTable table = existingTable.get();
            table.setTableName(updatedTable.getTableName());
            tableRepository.save(table);
            return ResponseEntity.ok("Table updated successfully.");
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Table not found.");
        }
    }

    @GetMapping("/{id}")
    public String editTablePage(@PathVariable Long id, Model model) {
        ImportedTable table = tableRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid table Id:" + id));
        model.addAttribute("table", table);
        return "edit_table";  // 返回编辑页面的模板名
    }
    @DeleteMapping("/tables/{id}")
    public ResponseEntity<?> deleteTable(@PathVariable Long id) {
        importService.deleteTable(id);
        return ResponseEntity.ok("Table and associated columns deleted successfully.");
    }
}

