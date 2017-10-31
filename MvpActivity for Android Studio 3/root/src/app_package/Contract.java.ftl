package ${packageName};

import ${applicationPackage}.activities.BasePresenter;
import ${applicationPackage}.activities.BaseView;

interface ${mvpName}Contract {

    interface View extends BaseView<Presenter> {

    }

    interface Presenter extends BasePresenter {

    }
}
