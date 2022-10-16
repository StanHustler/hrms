package cn.pzhu.pserson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InfoController {

    @GetMapping("sysinfo")
    public String sysinfo(){
        return "info/sysinfo";
    }
    @GetMapping("log")
    public String log(){
        return "info/log";
    }
}
