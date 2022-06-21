package main.hotelmanagementsystem.services;

import main.hotelmanagementsystem.dao.ManagerMessageRepository;
import main.hotelmanagementsystem.model.ManagerMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("managerService")
public class ManagerServiceImpl implements ManagerService {

    @Autowired
    ManagerMessageRepository managerMessageRepository;

    @Override
    public void add(ManagerMessage managerMessage) {
        managerMessageRepository.save(managerMessage);
    }
}
