package cn.pzhu.pserson.service;

import cn.pzhu.pserson.dao.dao.InventoryMapper;
import cn.pzhu.pserson.dao.dao.SaleMapper;
import cn.pzhu.pserson.domain.Inventory;
import cn.pzhu.pserson.domain.InventoryExample;
import cn.pzhu.pserson.domain.Sale;
import cn.pzhu.pserson.domain.SaleExample;
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
    }
}
