package main.hotelmanagementsystem.dao;

import main.hotelmanagementsystem.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface AdminRepository extends JpaRepository<Admin, Integer> {

    @Query("select a from Admin a where a.username = :username and a.password = :password")
    Admin loginValidation(@Param("username") String username, @Param("password") String password);

}
