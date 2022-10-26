package cn.pzhu.pserson.controller;

import cn.pzhu.pserson.domain.Purchase;
import cn.pzhu.pserson.domain.response.BarDTO;
import cn.pzhu.pserson.service.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
public class PurchaseController {
    @Autowired
    private PurchaseService purchaseService;

    @GetMapping("/purchase/add")
    public String purchaseAdd(){
        return "purchase/add";
    }

    @PostMapping("/purchase/add")
    public String purchaseAddBack(@ModelAttribute Purchase purchase){

        Date millisecondDate= new Date(System.currentTimeMillis());
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        purchase.setTime(formatter.format(millisecondDate));
        purchaseService.insert(purchase);
        return "redirect:/purchase/list";
    }

    @GetMapping("/purchase/list")
    public String purchaseList(Model model){
        List<Purchase> list = purchaseService.getPurchase();
        model.addAttribute("list",list);
        return "purchase/list";
    }

    @PostMapping("/purchase/api/recent")
    public BarDTO a(){
        return purchaseService.getRecent();
    }
}
