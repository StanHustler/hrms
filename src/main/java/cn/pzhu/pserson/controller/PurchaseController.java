package cn.pzhu.pserson.controller;

import cn.pzhu.pserson.domain.Purchase;
import cn.pzhu.pserson.service.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class PurchaseController {
    @Autowired
    private PurchaseService purchaseService;

    @GetMapping("/purchase/add")
    public String purchaseAdd(){
        return "purchase/add";
    }

    @PostMapping("/purchase/add")
    public String purchaseAddBack(@ModelAttribute Purchase purchase){
        purchase.setTime(String.valueOf(System.currentTimeMillis()));
        purchaseService.insert(purchase);
        return "redirect:/purchase/list";
    }

    @GetMapping("/purchase/list")
    public String purchaseList(Model model){
        List<Purchase> list = purchaseService.getPurchase();
        model.addAttribute("list",list);
        return "purchase/list";
    }
}
