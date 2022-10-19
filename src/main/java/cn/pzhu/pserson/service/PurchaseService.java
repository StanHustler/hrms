package cn.pzhu.pserson.service;

import cn.pzhu.pserson.dao.dao.FinanceMapper;
import cn.pzhu.pserson.dao.dao.InventoryMapper;
import cn.pzhu.pserson.dao.dao.PurchaseMapper;
import cn.pzhu.pserson.domain.*;
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
    @Autowired
    private FinanceMapper financeMapper;

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

        Finance finance = new Finance();
        finance.setCount(purchase.getMoney()*-1);
        finance.setTime(purchase.getTime());
        finance.setInfo("购买：" + purchase.getName()+"*"+purchase.getCount());
        financeMapper.insert(finance);
    }

    public void removeById(Integer id){
        purchaseMapper.deleteByPrimaryKey(id);
    }
}
