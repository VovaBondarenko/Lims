package Lims.data_base.repository;

import Lims.data_base.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface UsersRepository extends JpaRepository<Users,Integer> {


    @Query(value = "SELECT * from users",nativeQuery = true)
    public List<Users> findAll();

}
