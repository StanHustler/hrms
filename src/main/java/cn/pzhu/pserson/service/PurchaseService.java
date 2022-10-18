package cn.pzhu.pserson.service;

import cn.pzhu.pserson.dao.dao.InventoryMapper;
import cn.pzhu.pserson.dao.dao.PurchaseMapper;
import cn.pzhu.pserson.domain.Inventory;
import cn.pzhu.pserson.domain.InventoryExample;
import cn.pzhu.pserson.domain.Purchase;
import cn.pzhu.pserson.domain.PurchaseExample;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PurchaseService {

    @Autowired
    private PurchaseMapper purchaseMapper;
    @Autowired
    private InventoryMapper inventoryMapper;

    public List<Purchase> getPurchase(){
        return purchaseMapper.selectByExample(new PurchaseExample());
    }

    public void insert(Purchase purchase){
        purchaseMapper.insertSelective(purchase);

        InventoryExample example = new InventoryExample();
        example.createCriteria().andNameEqualTo(purchase.getName());
        List<Inventory> inventories = inventoryMapper.selectByExample(example);
        if (inventories.size() == 0){
            Inventory inventory = new Inventory();
            BeanUtils.copyProperties(purchase,inventory);
            inventory.setInput(0);
            inventory.setOutput(0);
            inventoryMapper.insertSelective(inventory);
        }else {
            Inventory inventory = inventories.get(0);
            inventory.setInput(inventory.getInput()+purchase.getCount());
            inventory.setCount(inventory.getCount()+purchase.getCount());
            example = new InventoryExample();
            example.createCriteria().andIdEqualTo(inventory.getId());
            inventoryMapper.updateByExampleSelective(inventory, example);
        }
    }

    public void removeById(Integer id){
        purchaseMapper.deleteByPrimaryKey(id);
    }
}
