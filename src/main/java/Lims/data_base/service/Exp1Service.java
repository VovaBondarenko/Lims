package Lims.data_base.service;

import Lims.data_base.entity.Exp1;

import java.util.List;

/**
 * Created by Vova on 27.03.2016.
 */
public interface Exp1Service {

    Exp1 addExperiments(Exp1 experiments);
    void deleteExperiments(int idExperiments);
    List<Exp1> getAllExp();

}
