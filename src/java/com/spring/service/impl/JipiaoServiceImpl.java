package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.JipiaoMapper;
import com.spring.entity.Jipiao;
import com.spring.service.JipiaoService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("JipiaoService")
public class JipiaoServiceImpl extends ServiceBase<Jipiao> implements JipiaoService {
    @Resource
    private JipiaoMapper dao;

    @Override
    protected JipiaoMapper getDao() {
        return dao;
    }
}
