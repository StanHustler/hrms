package cn.pzhu.pserson.controller;

import cn.pzhu.pserson.domain.Inventory;
import cn.pzhu.pserson.service.InventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class InventoryController {

    @Autowired
    private InventoryService inventoryService;


    @GetMapping("/inventory/list")
    public String index(Model model){
        List<Inventory> list = inventoryService.getList();
        model.addAttribute("list",list);
        return "inventory/list";
    }
}
