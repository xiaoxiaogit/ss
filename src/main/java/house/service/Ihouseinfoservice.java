package house.service;

import house.entity.houseinfo;
import house.entity.housetype;

import java.util.List;

/**
 * Created by 席洪丽 on 2017/8/31.
 */
public interface Ihouseinfoservice {
    public List<houseinfo> houseInfo();
    public List<houseinfo> houselist(int id);
    //查询户型
    public List<housetype> houseType();
    //添加房屋信息
    public int insert(houseinfo info);
    public List<houseinfo>infolists(String housedesc);
}
