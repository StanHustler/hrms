package cn.pzhu.pserson.service;

import cn.pzhu.pserson.dao.dao.PurchaseMapper;
import cn.pzhu.pserson.domain.Purchase;
import cn.pzhu.pserson.domain.PurchaseExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PurchaseService {

    @Autowired
    private PurchaseMapper purchaseMapper;

    public List<Purchase> getPurchase(){
        return purchaseMapper.selectByExample(new PurchaseExample());
    }

    public void insert(Purchase purchase){
        purchaseMapper.insert(purchase);
    }

    public void removeById(Integer id){
        purchaseMapper.deleteByPrimaryKey(id);
    }
}
