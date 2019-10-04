package org.linlinjava.ax.db.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.linlinjava.ax.db.domain.AxUser;
import org.linlinjava.ax.db.domain.AxUserExample;

public interface AxUserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    long countByExample(AxUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    int deleteByExample(AxUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    int insert(AxUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    int insertSelective(AxUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    AxUser selectOneByExample(AxUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    AxUser selectOneByExampleSelective(@Param("example") AxUserExample example, @Param("selective") AxUser.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    List<AxUser> selectByExampleSelective(@Param("example") AxUserExample example, @Param("selective") AxUser.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    List<AxUser> selectByExample(AxUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    AxUser selectByPrimaryKeySelective(@Param("id") Integer id, @Param("selective") AxUser.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    AxUser selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    AxUser selectByPrimaryKeyWithLogicalDelete(@Param("id") Integer id, @Param("andLogicalDeleted") boolean andLogicalDeleted);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    int updateByExampleSelective(@Param("record") AxUser record, @Param("example") AxUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    int updateByExample(@Param("record") AxUser record, @Param("example") AxUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(AxUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(AxUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    int logicalDeleteByExample(@Param("example") AxUserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_user
     *
     * @mbg.generated
     */
    int logicalDeleteByPrimaryKey(Integer id);
}