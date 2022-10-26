package cn.pzhu.pserson.service;

import cn.pzhu.pserson.dao.dao.InventoryMapper;
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

    public Integer getNumShort(){
        InventoryExample example = new InventoryExample();
        example.createCriteria().andCountLessThan(10);
        return inventoryMapper.selectByExample(example).size();
    }

    public Integer getCountInventory(){
        return inventoryMapper.selectByExample(new InventoryExample()).size();
    }

    public List<Inventory> getListMost() {
        InventoryExample example = new InventoryExample();
        example.setOrderByClause("count DESC");
        return inventoryMapper.selectByExample(example);
    }
}
