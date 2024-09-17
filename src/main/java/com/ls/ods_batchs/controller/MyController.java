package com.ls.ods_batchs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyController {

    // 显示功能选择页面
    @GetMapping("/menu")
    public String menu() {
        return "menu";
    }

//     URL Batches 页面
//    @GetMapping("/url-batches")
//    public String urlBatches() {
//        return "url_batches";
//    }

//    // Import Page 页面
//    @GetMapping("/import-page")
//    public String importPage() {
//        return "import_page";
//    }

    // 登录页面
    @GetMapping("/login")
    public String login() {
        return "login";
    }
}

