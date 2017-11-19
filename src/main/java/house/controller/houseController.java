package house.controller;

import house.entity.houseinfo;
import house.entity.housetype;
import house.service.imp.houseInfoserviceimp;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
@Controller
@RequestMapping("/house")
public class houseController {
    @Resource(name = "houseinfo")
    houseInfoserviceimp service;
    @RequestMapping("/houseinfolist")
    public String houseinfo(HttpServletRequest request){
        List<houseinfo> info=service.houseInfo();
        request.setAttribute("houseinfo",info);
        return "house";
    }
    //通过房屋类型查询房屋信息
    @RequestMapping("/houselist/{id}")
    public String houselist(@PathVariable int id,HttpServletRequest request){
        List<houseinfo> list=service.houselist(id);
        request.setAttribute("houseinfo",list);
        return "house";
    }
    //查询房屋类型
    @RequestMapping("/housetype")
    public String houseType(HttpServletRequest request){
       List<housetype> type=service.houseType();
       request.setAttribute("houseType",type);
       return "house1";
    }
    //添加房屋信息
    @RequestMapping("houseinsert")
    public String houseinsert( houseinfo info){
        info.setPublishdate(new Date());
        int count=service.insert(info);
        if (count>0){
            return "redirect:/house/houseinfolist";
        }else {
            return "house1";
        }
    }
    @RequestMapping("/dolists")
    public String dolists(HttpSession session,String housedesc) {
        List<houseinfo> houselist = service.infolists(housedesc);
        session.setAttribute("houseinfo",houselist);
        return "redirect:/house/houseinfolist";
    }
}
