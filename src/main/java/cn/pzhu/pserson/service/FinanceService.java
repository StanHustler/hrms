package cn.pzhu.pserson.service;

import cn.pzhu.pserson.dao.dao.FinanceMapper;
import cn.pzhu.pserson.domain.Finance;
import cn.pzhu.pserson.domain.FinanceExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FinanceService {

    @Autowired
    private FinanceMapper financeMapper;

    public List<Finance> list() {
        return financeMapper.selectByExample(new FinanceExample());
    }

    public void insert(Finance finance) {
        financeMapper.insert(finance);
    }

    public int getInput(){
        FinanceExample example = new FinanceExample();
        example.createCriteria().andCountGreaterThan(0);
        List<Finance> finances = financeMapper.selectByExample(example);
        Integer res = 0;
        for (Finance finance:finances){
            res+=finance.getCount();
        }
        return res;
    }

    public int getOutput(){
        FinanceExample example = new FinanceExample();
        example.createCriteria().andCountLessThan(0);
        List<Finance> finances = financeMapper.selectByExample(example);
        Integer res = 0;
        for (Finance finance:finances){
            res+=finance.getCount();
        }
        return res;
    }
}
