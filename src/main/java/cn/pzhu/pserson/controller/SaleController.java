package cn.pzhu.pserson.controller;

import cn.pzhu.pserson.domain.Purchase;
import cn.pzhu.pserson.domain.Sale;
import cn.pzhu.pserson.service.SaleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class SaleController {

    @Autowired
    private SaleService saleService;

    @GetMapping("/sale/list")
    public String index(Model model){
        List<Sale> list = saleService.getList();
        model.addAttribute("list",list);
        return "sale/list";
    }

    @GetMapping("/sale/add")
    public String index(){
        return "sale/add";
    }

    @PostMapping("/sale/add")
    public String purchaseAddBack(@ModelAttribute Sale sale){
        sale.setTime(String.valueOf(System.currentTimeMillis()));
        saleService.insert(sale);
        return "redirect:/sale/list";
    }
}
