package cn.pzhu.pserson.controller;

import cn.pzhu.pserson.domain.Finance;
import cn.pzhu.pserson.service.FinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class FinanceController {
    @Autowired
    private FinanceService financeService;

    @GetMapping("/finance/add")
    public String purchaseAdd(){
        return "finance/add";
    }

    @PostMapping("/finance/add")
    public String purchaseAddBack(@ModelAttribute Finance finance){
        Date millisecondDate= new Date(System.currentTimeMillis());
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        finance.setTime(formatter.format(millisecondDate));
        financeService.insert(finance);
        return "redirect:/finance/list";
    }

    @GetMapping("/finance/list")
    public String purchaseList(Model model){
        List<Finance> list = financeService.list();
        model.addAttribute("list",list);
        return "finance/list";
    }
}
