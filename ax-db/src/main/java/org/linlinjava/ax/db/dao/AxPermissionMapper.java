package org.linlinjava.ax.db.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.linlinjava.ax.db.domain.AxPermission;
import org.linlinjava.ax.db.domain.AxPermissionExample;

public interface AxPermissionMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    long countByExample(AxPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    int deleteByExample(AxPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    int insert(AxPermission record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    int insertSelective(AxPermission record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    AxPermission selectOneByExample(AxPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    AxPermission selectOneByExampleSelective(@Param("example") AxPermissionExample example, @Param("selective") AxPermission.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    List<AxPermission> selectByExampleSelective(@Param("example") AxPermissionExample example, @Param("selective") AxPermission.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    List<AxPermission> selectByExample(AxPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    AxPermission selectByPrimaryKeySelective(@Param("id") Integer id, @Param("selective") AxPermission.Column ... selective);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    AxPermission selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    AxPermission selectByPrimaryKeyWithLogicalDelete(@Param("id") Integer id, @Param("andLogicalDeleted") boolean andLogicalDeleted);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    int updateByExampleSelective(@Param("record") AxPermission record, @Param("example") AxPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    int updateByExample(@Param("record") AxPermission record, @Param("example") AxPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(AxPermission record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(AxPermission record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    int logicalDeleteByExample(@Param("example") AxPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ax_permission
     *
     * @mbg.generated
     */
    int logicalDeleteByPrimaryKey(Integer id);
}