package house.dao;

import house.entity.houseinfo;
import house.entity.housetype;

import java.util.List;

/**
 * Created by 席洪丽 on 2017/8/31.
 */
public interface IhouseInfoDao {
    public List<houseinfo> houseInfo();
    public List<houseinfo> infolists(String housedesc);
    //添加信息
    public int insert(houseinfo info);
    public List<houseinfo> houselist(int id);
    //查询户型
    public List<housetype> houseType();
}
