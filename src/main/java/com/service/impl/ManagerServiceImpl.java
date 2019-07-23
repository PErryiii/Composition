package com.service.impl;

import com.dao.ManagerDao;
import com.pojo.Manager;
import com.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerServiceImpl implements ManagerService{
    @Autowired
    ManagerDao managerDao;

    @Override
    public Integer managerLogin(Manager manager) {
        return managerDao.managerLogin(manager);
    }
}
