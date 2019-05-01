package Lims.data_base.service.impl;

import Lims.data_base.entity.Exp1;
import Lims.data_base.repository.Exp1Repository;
import Lims.data_base.service.Exp1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Service
@Transactional
public class Exp1ServiceImpl implements Exp1Service {

    @Autowired
    private Exp1Repository exp1Repository;

    @Override
    public Exp1 addExperiments(Exp1 experiments) {
        return exp1Repository.saveAndFlush(experiments);
    }

    @Override
    public void deleteExperiments(int idExperiments) {

    }

    @Override
    public List<Exp1> getAllExp() {
        List<Exp1> experimentsResult =exp1Repository.findAll();
        return experimentsResult;
    }
}
