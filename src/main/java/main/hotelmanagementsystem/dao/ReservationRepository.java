package main.hotelmanagementsystem.dao;

import main.hotelmanagementsystem.model.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ReservationRepository extends JpaRepository<Reservation, Integer> {

    //this will be to check if there are reservations with room name more than 5 times, then that room type will be unavailable
    @Query("SELECT COUNT(checkout) FROM Reservation reservation JOIN reservation.rooms r where r.name = :name")
    Integer getCheckoutDateCount(@Param("name") String name);

    @Query("SELECT r.full_name FROM Reservation r where r.full_name = :name")
    String getFullNameByName(@Param("name") String name);

}
