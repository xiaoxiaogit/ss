package house.service.imp;

import house.dao.IhouseInfoDao;
import house.entity.houseinfo;
import house.entity.housetype;
import house.service.Ihouseinfoservice;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 席洪丽 on 2017/8/31.
 */
@Service("houseinfo")
public class houseInfoserviceimp implements Ihouseinfoservice {
    public IhouseInfoDao getDao() {
        return dao;
    }

    public void setDao(IhouseInfoDao dao) {
        this.dao = dao;
    }
    @Resource()
    private IhouseInfoDao dao;
    public List<houseinfo> houseInfo() {
        return dao.houseInfo();
    }
    public List<houseinfo> houselist(int id) {
        return dao.houselist(id);
    }
    public List<housetype> houseType() {
        return dao.houseType();
    }
    public int insert(houseinfo info) {
        return dao.insert(info);
    }
    public List<houseinfo> infolists(String housedesc){
        return dao.infolists(housedesc);
    }
}
