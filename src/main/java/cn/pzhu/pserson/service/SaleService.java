package cn.pzhu.pserson.service;

import cn.pzhu.pserson.dao.dao.FinanceMapper;
import cn.pzhu.pserson.dao.dao.InventoryMapper;
import cn.pzhu.pserson.dao.dao.SaleMapper;
import cn.pzhu.pserson.domain.*;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SaleService {

    @Autowired
    private SaleMapper saleMapper;
    @Autowired
    private InventoryMapper inventoryMapper;
    @Autowired
    private FinanceMapper financeMapper;

    public List<Sale> getList(){
        return saleMapper.selectByExample(new SaleExample());
    }

    public void insert(Sale sale) {
        saleMapper.insertSelective(sale);

        InventoryExample example = new InventoryExample();
        example.createCriteria().andNameEqualTo(sale.getName());
        List<Inventory> inventories = inventoryMapper.selectByExample(example);
        if (inventories.size() > 0){
            Inventory inventory = inventories.get(0);
            inventory.setOutput(inventory.getOutput()+sale.getCount());
            inventory.setCount(inventory.getCount() - sale.getCount());
            example = new InventoryExample();
            example.createCriteria().andIdEqualTo(inventory.getId());
            inventoryMapper.updateByExampleSelective(inventory, example);
        }

        Finance finance = new Finance();
        finance.setCount(sale.getMoney());
        finance.setTime(sale.getTime());
        finance.setInfo("售出："+sale.getName()+"*"+sale.getCount());
        financeMapper.insert(finance);
    }
}
