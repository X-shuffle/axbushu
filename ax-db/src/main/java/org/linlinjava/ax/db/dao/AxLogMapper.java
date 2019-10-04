package org.linlinjava.ax.db.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.linlinjava.ax.db.domain.AxLog;
import org.linlinjava.ax.db.domain.AxLogExample;

public interface AxLogMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    long countByExample(AxLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    int deleteByExample(AxLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    int insert(AxLog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    int insertSelective(AxLog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    AxLog selectOneByExample(AxLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    AxLog selectOneByExampleSelective(@Param("example") AxLogExample example, @Param("selective") AxLog.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    List<AxLog> selectByExampleSelective(@Param("example") AxLogExample example, @Param("selective") AxLog.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    List<AxLog> selectByExample(AxLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    AxLog selectByPrimaryKeySelective(@Param("id") Integer id, @Param("selective") AxLog.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    AxLog selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    AxLog selectByPrimaryKeyWithLogicalDelete(@Param("id") Integer id, @Param("andLogicalDeleted") boolean andLogicalDeleted);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    int updateByExampleSelective(@Param("record") AxLog record, @Param("example") AxLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    int updateByExample(@Param("record") AxLog record, @Param("example") AxLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(AxLog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(AxLog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    int logicalDeleteByExample(@Param("example") AxLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_log
     *
     * @mbg.generated
     */
    int logicalDeleteByPrimaryKey(Integer id);
}