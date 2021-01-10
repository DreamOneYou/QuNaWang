package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "jipiao")
public class Jipiao implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "piaowubianhao")
    private String piaowubianhao;
    @Column(name = "hangbanmingcheng")
    private String hangbanmingcheng;
    @Column(name = "chufadi")
    private String chufadi;
    @Column(name = "mudidi")
    private String mudidi;
    @Column(name = "qifeishijian")
    private String qifeishijian;
    @Column(name = "piaojia")
    private Double piaojia;
    @Column(name = "shengyuzuowei")
    private Integer shengyuzuowei;
    @Column(name = "dengjikou")
    private String dengjikou;


    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPiaowubianhao() {
        return piaowubianhao;
    }
    public void setPiaowubianhao(String piaowubianhao) {
        this.piaowubianhao = piaowubianhao == null ? "" : piaowubianhao.trim();
    }

    public String getHangbanmingcheng() {
        return hangbanmingcheng;
    }
    public void setHangbanmingcheng(String hangbanmingcheng) {
        this.hangbanmingcheng = hangbanmingcheng == null ? "" : hangbanmingcheng.trim();
    }

    public String getChufadi() {
        return chufadi;
    }
    public void setChufadi(String chufadi) {
        this.chufadi = chufadi == null ? "" : chufadi.trim();
    }

    public String getMudidi() {
        return mudidi;
    }
    public void setMudidi(String mudidi) {
        this.mudidi = mudidi == null ? "" : mudidi.trim();
    }

    public String getQifeishijian() {
        return qifeishijian;
    }
    public void setQifeishijian(String qifeishijian) {
        this.qifeishijian = qifeishijian == null ? "" : qifeishijian.trim();
    }



    public Double getPiaojia() {
        return piaojia;
    }
    public void setPiaojia(Double piaojia) {
        this.piaojia = piaojia == null ? 0.0f : piaojia;
    }

    public Integer getShengyuzuowei() {
        return shengyuzuowei;
    }
    public void setShengyuzuowei(Integer shengyuzuowei) {
        this.shengyuzuowei = shengyuzuowei == null ? 0 : shengyuzuowei;
    }

    public String getDengjikou() {
        return dengjikou;
    }
    public void setDengjikou(String dengjikou) {
        this.dengjikou = dengjikou == null ? "" : dengjikou.trim();
    }


    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
