package com.ls.ods_batchs.service;

import com.ls.ods_batchs.entity.ImportedTable;
import com.ls.ods_batchs.entity.ImportedTableColumn;
import com.ls.ods_batchs.repository.ImportedTableColumnRepository;
import com.ls.ods_batchs.repository.ImportedTableRepository;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
@Service
public class ImportService {

    @Autowired
    private ImportedTableRepository tableRepository;

    @Autowired
    private ImportedTableColumnRepository columnRepository;

    public void importExcel(MultipartFile file) throws IOException {
        XSSFWorkbook workbook = new XSSFWorkbook(file.getInputStream());
        for (int i = 0; i < workbook.getNumberOfSheets(); i++) {
            XSSFSheet sheet = workbook.getSheetAt(i);
            String tableName = sheet.getSheetName();

            ImportedTable table = new ImportedTable();
            table.setTableName(tableName);
            table = tableRepository.save(table);

            for (int j = 1; j <= sheet.getLastRowNum(); j++) {
                XSSFRow row = sheet.getRow(j);
                ImportedTableColumn column = new ImportedTableColumn();
                column.setTableId(table.getId());  // 直接使用 table.getId() 关联
                column.setColumnName(row.getCell(0).getStringCellValue());
                column.setColumnType(row.getCell(1).getStringCellValue());
                column.setColumnLength((int) row.getCell(2).getNumericCellValue());
                columnRepository.save(column);
            }
        }
        workbook.close();
    }

    @Transactional
    public void deleteTable(Long tableId) {
        // 删除关联的列信息
        columnRepository.deleteByTableId(tableId);
        // 删除表信息
        tableRepository.deleteById(tableId);
    }
}
