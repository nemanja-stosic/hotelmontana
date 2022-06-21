package main.hotelmanagementsystem.dao;

import main.hotelmanagementsystem.model.Rooms;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomsRepository extends JpaRepository<Rooms, Integer> {
}
