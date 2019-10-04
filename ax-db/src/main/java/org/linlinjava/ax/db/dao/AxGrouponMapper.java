package org.linlinjava.ax.db.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.linlinjava.ax.db.domain.AxGroupon;
import org.linlinjava.ax.db.domain.AxGrouponExample;

public interface AxGrouponMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    long countByExample(AxGrouponExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    int deleteByExample(AxGrouponExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    int insert(AxGroupon record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    int insertSelective(AxGroupon record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    AxGroupon selectOneByExample(AxGrouponExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    AxGroupon selectOneByExampleSelective(@Param("example") AxGrouponExample example, @Param("selective") AxGroupon.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    List<AxGroupon> selectByExampleSelective(@Param("example") AxGrouponExample example, @Param("selective") AxGroupon.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    List<AxGroupon> selectByExample(AxGrouponExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    AxGroupon selectByPrimaryKeySelective(@Param("id") Integer id, @Param("selective") AxGroupon.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    AxGroupon selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    AxGroupon selectByPrimaryKeyWithLogicalDelete(@Param("id") Integer id, @Param("andLogicalDeleted") boolean andLogicalDeleted);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    int updateByExampleSelective(@Param("record") AxGroupon record, @Param("example") AxGrouponExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    int updateByExample(@Param("record") AxGroupon record, @Param("example") AxGrouponExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(AxGroupon record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(AxGroupon record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    int logicalDeleteByExample(@Param("example") AxGrouponExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_groupon
     *
     * @mbg.generated
     */
    int logicalDeleteByPrimaryKey(Integer id);
}