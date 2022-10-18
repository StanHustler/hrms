package cn.pzhu.pserson.service;

import cn.pzhu.pserson.dao.dao.InventoryMapper;
import cn.pzhu.pserson.dao.dao.PurchaseMapper;
import cn.pzhu.pserson.domain.Inventory;
import cn.pzhu.pserson.domain.InventoryExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InventoryService {

    @Autowired
    private InventoryMapper inventoryMapper;

    public List<Inventory> getList() {
        return inventoryMapper.selectByExample(new InventoryExample());
    }
}
