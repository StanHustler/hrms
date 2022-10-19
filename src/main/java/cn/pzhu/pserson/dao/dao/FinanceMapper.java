package cn.pzhu.pserson.dao.dao;

import cn.pzhu.pserson.domain.Finance;
import cn.pzhu.pserson.domain.FinanceExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface FinanceMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    long countByExample(FinanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    int deleteByExample(FinanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    int insert(Finance row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    int insertSelective(Finance row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    List<Finance> selectByExampleWithBLOBs(FinanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    List<Finance> selectByExample(FinanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    Finance selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    int updateByExampleSelective(@Param("row") Finance row, @Param("example") FinanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    int updateByExampleWithBLOBs(@Param("row") Finance row, @Param("example") FinanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    int updateByExample(@Param("row") Finance row, @Param("example") FinanceExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    int updateByPrimaryKeySelective(Finance row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    int updateByPrimaryKeyWithBLOBs(Finance row);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table finance
     *
     * @mbg.generated Wed Oct 19 15:55:12 CST 2022
     */
    int updateByPrimaryKey(Finance row);
}