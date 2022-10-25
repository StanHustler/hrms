package cn.pzhu.pserson.controller;

import cn.pzhu.pserson.domain.Sale;
import cn.pzhu.pserson.service.SaleService;
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
        Date millisecondDate= new Date(System.currentTimeMillis());
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        sale.setTime(formatter.format(millisecondDate));
        saleService.insert(sale);
        return "redirect:/sale/list";
    }
}
