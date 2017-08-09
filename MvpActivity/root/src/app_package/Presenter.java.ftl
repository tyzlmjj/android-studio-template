package ${packageName};

import ${applicationPackage}.activities.BasePresenterImpl;

class ${mvpName}Presenter  extends BasePresenterImpl<${mvpName}Contract.View> implements ${mvpName}Contract.Presenter {

    ${mvpName}Presenter(${mvpName}Contract.View view,DataRepository dataRepository) {
        super(view,dataRepository);
    }

}
