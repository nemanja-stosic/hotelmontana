package main.hotelmanagementsystem.dao;

import main.hotelmanagementsystem.model.GuestArchive;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GuestArchiveRepository extends JpaRepository<GuestArchive, Integer> {

}
