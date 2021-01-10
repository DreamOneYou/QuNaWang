package com.spring.controller;

import com.spring.dao.JipiaoMapper;
import com.spring.entity.Jipiao;
import com.spring.service.JipiaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;

import java.util.*;


/**
 * 机票
 */
@Controller
public class JipiaoController extends BaseController {
    @Autowired
    private JipiaoMapper dao;
    @Autowired
    private JipiaoService service;

    /**
     * 后台列表页
     */
    @RequestMapping("/jipiao_list")
    public String list() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc

        Example example = new Example(Jipiao.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();          // 创建一个扩展搜索条件类
        String where = " 1=1 ";   // 创建初始条件为：1=1
        where += getWhere();      // 从方法中获取url 上的参数，并写成 sql条件语句
        criteria.andCondition(where);   // 将条件写进上面的扩展条件类中
        if (sort.equals("desc")) {        // 判断前台提交的sort 参数是否等于  desc倒序  是则使用倒序，否则使用正序
            example.orderBy(order).desc();  // 把sql 语句设置成倒序
        } else {
            example.orderBy(order).asc();   // 把 sql 设置成正序
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));  // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1, page);  // 取两个数的最大值，防止page 小于1
        List<Jipiao> list = service.selectPageExample(example, page, 5);   // 获取当前页的行数
        // 将列表写给界面使用
        request.setAttribute("list", list);
        assign("orderby", order);  // 把当前排序结果写进前台
        assign("sort", sort);      // 把当前排序结果写进前台
        assign("where", where);    // 把当前条件写给前台
        return "jipiao_list";   // 使用视图文件：WebRoot\jipiao_list.jsp
    }

    public String getWhere() {
        String where = " ";
        // 以下也是一样的操作，判断是否符合条件，符合则写入sql 语句
        if (!Request.get("piaowubianhao").equals("")) {
            where += " AND piaowubianhao LIKE '%" + Request.get("piaowubianhao") + "%' ";
        }
        if (!Request.get("hangbanmingcheng").equals("")) {
            where += " AND hangbanmingcheng LIKE '%" + Request.get("hangbanmingcheng") + "%' ";
        }
        if (!Request.get("chufadi").equals("")) {
            where += " AND chufadi LIKE '%" + Request.get("chufadi") + "%' ";
        }
        if (!Request.get("mudidi").equals("")) {
            where += " AND mudidi LIKE '%" + Request.get("mudidi") + "%' ";
        }
        if (!Request.get("qifeishijian_start").equals("")) {
            where += " AND qifeishijian >='" + Request.get("qifeishijian_start") + "' ";
        }
        if (!Request.get("qifeishijian_end").equals("")) {
            where += " AND qifeishijian <= '" + Request.get("qifeishijian_end") + "' ";
        }
        return where;
    }


    @RequestMapping("/jipiao_add")
    public String add() {
        return "jipiao_add";
    }


    @RequestMapping("/jipiao_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Jipiao mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "jipiao_updt";
    }

    /**
     * 添加内容
     *
     * @return
     */
    @RequestMapping("/jipiaoinsert")
    public String insert() {
        String tmp = "";
        Jipiao post = new Jipiao();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setPiaowubianhao(Request.get("piaowubianhao"));

        post.setHangbanmingcheng(Request.get("hangbanmingcheng"));

        post.setChufadi(Request.get("chufadi"));

        post.setMudidi(Request.get("mudidi"));

        post.setQifeishijian(Request.get("qifeishijian"));

        post.setPiaojia(Request.getDouble("piaojia"));

        post.setShengyuzuowei(Request.getInt("shengyuzuowei"));

        post.setDengjikou(Request.get("dengjikou"));


        post.setAddtime(Info.getDateStr()); // 设置添加时间
        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     *
     * @return
     */
    @RequestMapping("/jipiaoupdate")
    public String update() {
        // 创建实体类
        Jipiao post = new Jipiao();
        // 将前台表单数据填充到实体类
        if (!Request.get("piaowubianhao").equals(""))
            post.setPiaowubianhao(Request.get("piaowubianhao"));
        if (!Request.get("hangbanmingcheng").equals(""))
            post.setHangbanmingcheng(Request.get("hangbanmingcheng"));
        if (!Request.get("chufadi").equals(""))
            post.setChufadi(Request.get("chufadi"));
        if (!Request.get("mudidi").equals(""))
            post.setMudidi(Request.get("mudidi"));
        if (!Request.get("qifeishijian").equals(""))
            post.setQifeishijian(Request.get("qifeishijian"));

        if (!Request.get("piaojia").equals(""))
            post.setPiaojia(Request.getDouble("piaojia"));
        if (!Request.get("shengyuzuowei").equals(""))
            post.setShengyuzuowei(Request.getInt("shengyuzuowei"));
        if (!Request.get("dengjikou").equals(""))
            post.setDengjikou(Request.get("dengjikou"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     * 后台详情
     */
    @RequestMapping("/jipiao_detail")
    public String detail() {
        int id = Request.getInt("id");
        Jipiao map = service.find(id);  // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map);  // 把数据写到前台
        return "jipiao_detail";  // 详情页面：WebRoot\jipiao_detail.jsp
    }

    /**
     * 删除
     */
    @RequestMapping("/jipiao_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap delMap = Query.make("jipiao").find(id);

        service.delete(id);// 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
