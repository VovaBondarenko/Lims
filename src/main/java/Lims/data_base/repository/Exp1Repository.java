package Lims.data_base.repository;

import Lims.data_base.entity.Exp1;
//import com.sun.xml.internal.bind.v2.model.core.ID;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.Pageable;
//import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by Vova on 27.03.2016.
 */
public interface Exp1Repository extends JpaRepository<Exp1, Integer> {

    @Query(value = "SELECT * from Exp1",nativeQuery = true)
    public List<Exp1> findAll();

        @java.lang.Override
        long count();

        @java.lang.Override
        void delete(Integer integer);

        @java.lang.Override
        void delete(Exp1 exp1);

        @java.lang.Override
        void deleteAll();

        @java.lang.Override
        <S extends Exp1> S save(S s);

        @java.lang.Override
        <S extends Exp1> java.util.List<S> save(java.lang.Iterable<S> iterable);

        @java.lang.Override
        Exp1 findOne(Integer integer);

        @java.lang.Override
        boolean exists(Integer integer);

        @java.lang.Override
        void flush();

        @java.lang.Override
        <S extends Exp1> S saveAndFlush(S s);

        @java.lang.Override
        void deleteAllInBatch();

        @java.lang.Override
        Exp1 getOne(Integer integer);

}
