package cn.pzhu.pserson.controller;

import cn.pzhu.pserson.domain.Inventory;
import cn.pzhu.pserson.domain.response.InventoryRatioDTO;
import cn.pzhu.pserson.service.InventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class InventoryController {

    @Autowired
    private InventoryService inventoryService;

    @GetMapping("/inventory/list")
    public String index(Model model){
        List<Inventory> list = inventoryService.getList();
        model.addAttribute("list",list);
        return "inventory/list";
    }

    @PostMapping("/inventory/api/ratio")
    public List<InventoryRatioDTO> a(){
        List<Inventory> listMost = inventoryService.getListMost();
        int mx = Math.min(listMost.size(), 5);
        List<InventoryRatioDTO> list = new ArrayList<>();
        for (int i=0;i<mx;i++){
            InventoryRatioDTO inventoryRatioDTO = new InventoryRatioDTO();
            inventoryRatioDTO.setName(listMost.get(i).getName());
            inventoryRatioDTO.setValue(listMost.get(i).getCount());
            list.add(inventoryRatioDTO);
        }
        return list;
    }
}
