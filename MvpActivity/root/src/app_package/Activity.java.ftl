package ${packageName};

import ${applicationPackage}.activities.BaseMvpActivity;

public class ${mvpName}Activity extends BaseMvpActivity<${mvpName}Contract.Presenter,${mvpName}Fragment> {

    @Override
    protected ${mvpName}Fragment createView() {
        return new ${mvpName}Fragment();
    }

    @Override
    protected ${mvpName}Contract.Presenter createPresenter(${mvpName}Fragment view) {
        return new ${mvpName}Presenter(view,getDataRepository());
    }
}
