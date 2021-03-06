package com.guet.oos.dao.impl;

import com.guet.oos.dao.AbstractDAOImpl;
import com.guet.oos.dao.DishesTypeDao;
import com.guet.oos.fields.DishesTypeFields;
import com.guet.oos.po.DishesType;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Created by Shinelon on 2018/4/30.
 */
public class DishesTypeDaoImpl extends AbstractDAOImpl implements DishesTypeDao {

    public DishesTypeDaoImpl(Connection conn) {
        super(conn);
    }

    @Override
    public boolean doCreate(DishesType vo) {

        String sql = "insert into dishes_type_table(dishesTypeName,mealTypeName,mgId,createTime,updateTime) values(?,?,?,?,?)";

        try {
            super.pstmt = super.conn.prepareStatement(sql);

            super.pstmt.setString(1, vo.getDishesTypeName());
            super.pstmt.setString(2, vo.getMealTypeName());
            super.pstmt.setLong(3, vo.getMgId());
            super.pstmt.setString(4, vo.getCreateTime());
            super.pstmt.setString(5, vo.getUpdateTime());

            return super.pstmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public boolean doUpdate(DishesType vo) {
        return false;
    }

    @Override
    public boolean doRemove(Set<?> ids) {
        return false;
    }

    @Override
    public DishesType findById(Long id) {
        return null;
    }

    @Override
    public List<DishesType> findAll() {

        String sql = "select * from dishes_type_table";

        List<DishesType> typeList = null;

        try {
            super.pstmt = super.conn.prepareStatement(sql);

            ResultSet res = super.pstmt.executeQuery();

            typeList = encapsualationDishesType(res);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return typeList;
    }

    @Override
    public List<DishesType> findBySplit(String column, String keyWord, Integer currentPage, Integer lineSize) {
        return null;
    }

    @Override
    public Integer getAllCount(String column, String keyWord) {
        return null;
    }

    @Override
    public Integer getAllCount(String column) {
        return null;
    }

    @Override
    public Integer getAllCount() {

        String sql = "select count(*) from dishes_type_table";

        try {
            super.pstmt = super.conn.prepareStatement(sql);
            ResultSet res = super.pstmt.executeQuery();

            int total = 0;

            if (res.next())
                total = res.getInt(1);

            return total;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }

    }

    private List<DishesType> encapsualationDishesType(ResultSet res) {

        List<DishesType> typeList = new ArrayList<DishesType>();

        try {
            while (res.next()) {

                DishesType d = new DishesType();

                d.setDtId(res.getLong(DishesTypeFields.DTID));
                d.setMealTypeName(res.getString(DishesTypeFields.MEAL_TYPE_NAME));
                d.setMgId(res.getLong(DishesTypeFields.MGID));
                d.setCreateTime(res.getString(DishesTypeFields.CREATE_TIME));
                d.setDishesTypeName(res.getString(DishesTypeFields.DISHES_TYPE_NAME));
                d.setUpdateTime(res.getString(DishesTypeFields.UPDATE_TIME));

                typeList.add(d);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return typeList;

    }

    @Override
    public List<DishesType> getList(int start, int length) {

        int num1 = length + start;

        int num2 = start;

        String sql = "select top " + num1 + " * from dishes_type_table where dtId not in (select top " + num2 +
                " dtId from dishes_type_table)";

        List<DishesType> list = null;

        try {
            super.pstmt = super.conn.prepareStatement(sql);

            ResultSet res = super.pstmt.executeQuery();

            list = encapsualationDishesType(res);

            return list;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<String> getSpecifyColumn(String column) {

        //去除重复数据列
        String sql = "select distinct " + column + " from dishes_type_table";

        List<String> stringList = null;

        try {

            super.pstmt = super.conn.prepareStatement(sql);

            ResultSet res = super.pstmt.executeQuery();

            stringList = ecapsualtionSpecifyColumn(res);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return stringList;
    }

    @Override
    public List<String> getSpecifyColumnSpecifyValue(String col1, String col2, String value) {

        String sql = "select " + col1 + " from dishes_type_table where " + col2 + "=?";

        List<String> stringList = new ArrayList<String>();

        try {
            super.pstmt = super.conn.prepareStatement(sql);

            super.pstmt.setString(1, value);

            ResultSet res = super.pstmt.executeQuery();

//            System.out.println("res.isClosed()" + res.isClosed());

            while (res.next()) {
                stringList.add(res.getString(1));
            }

            return stringList;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    private List<String> ecapsualtionSpecifyColumn(ResultSet res) throws SQLException {

        List<String> stringList = new ArrayList<String>();

        while (res.next()) {
            stringList.add(res.getString(1));
        }

        return stringList;
    }
}
