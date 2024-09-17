package com.ls.ods_batchs.controller;

import com.ls.ods_batchs.entity.ImportedTable;
import com.ls.ods_batchs.repository.ImportedTableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
@RequestMapping("/import")
public class ImportPageController {

    @Autowired
    private ImportedTableRepository importedTableRepository;

    @GetMapping("/page")
    public String getImportPage(Model model) {
        // 从数据库中获取导入的表信息
        List<ImportedTable> tables = importedTableRepository.findAll();
        // 将表信息传递给前端模板
        model.addAttribute("tables", tables);
        return "import_page";  // 返回的字符串是模板的名称，对应 import_page.html
    }
}

