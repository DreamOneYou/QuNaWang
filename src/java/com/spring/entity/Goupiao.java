package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "goupiao")
public class Goupiao implements Serializable {
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
    @Column(name = "dengjikou")
    private String dengjikou;
    @Column(name = "goupiaorenxingming")
    private String goupiaorenxingming;
    @Column(name = "shouji")
    private String shouji;
    @Column(name = "shenfenzhenghao")
    private String shenfenzhenghao;
    @Column(name = "goupiaoren")
    private String goupiaoren;
    private String iszf;
    private Integer jipiaoid;

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

    public String getDengjikou() {
        return dengjikou;
    }
    public void setDengjikou(String dengjikou) {
        this.dengjikou = dengjikou == null ? "" : dengjikou.trim();
    }

    public String getGoupiaorenxingming() {
        return goupiaorenxingming;
    }
    public void setGoupiaorenxingming(String goupiaorenxingming) {
        this.goupiaorenxingming = goupiaorenxingming == null ? "" : goupiaorenxingming.trim();
    }

    public String getShouji() {
        return shouji;
    }
    public void setShouji(String shouji) {
        this.shouji = shouji == null ? "" : shouji.trim();
    }

    public String getShenfenzhenghao() {
        return shenfenzhenghao;
    }
    public void setShenfenzhenghao(String shenfenzhenghao) {
        this.shenfenzhenghao = shenfenzhenghao == null ? "" : shenfenzhenghao.trim();
    }

    public String getGoupiaoren() {
        return goupiaoren;
    }
    public void setGoupiaoren(String goupiaoren) {
        this.goupiaoren = goupiaoren == null ? "" : goupiaoren.trim();
    }
    public String getIszf() {
        return iszf;
    }
    public void setIszf(String iszf) {
        this.iszf = iszf == null ? "" : iszf.trim();
    }
    public Integer getJipiaoid() {
        return jipiaoid;
    }
    public void setJipiaoid(Integer jipiaoid) {
        this.jipiaoid = jipiaoid == null ? 0 : jipiaoid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
