package org.linlinjava.ax.db.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.linlinjava.ax.db.domain.AxKeyword;
import org.linlinjava.ax.db.domain.AxKeywordExample;

public interface AxKeywordMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    long countByExample(AxKeywordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    int deleteByExample(AxKeywordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    int insert(AxKeyword record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    int insertSelective(AxKeyword record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    AxKeyword selectOneByExample(AxKeywordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    AxKeyword selectOneByExampleSelective(@Param("example") AxKeywordExample example, @Param("selective") AxKeyword.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    List<AxKeyword> selectByExampleSelective(@Param("example") AxKeywordExample example, @Param("selective") AxKeyword.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    List<AxKeyword> selectByExample(AxKeywordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    AxKeyword selectByPrimaryKeySelective(@Param("id") Integer id, @Param("selective") AxKeyword.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    AxKeyword selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    AxKeyword selectByPrimaryKeyWithLogicalDelete(@Param("id") Integer id, @Param("andLogicalDeleted") boolean andLogicalDeleted);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    int updateByExampleSelective(@Param("record") AxKeyword record, @Param("example") AxKeywordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    int updateByExample(@Param("record") AxKeyword record, @Param("example") AxKeywordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(AxKeyword record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(AxKeyword record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    int logicalDeleteByExample(@Param("example") AxKeywordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_keyword
     *
     * @mbg.generated
     */
    int logicalDeleteByPrimaryKey(Integer id);
}