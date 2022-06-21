package main.hotelmanagementsystem.dao;

import main.hotelmanagementsystem.model.ManagerMessage;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ManagerMessageRepository extends JpaRepository<ManagerMessage, Integer> {

}
