package ${packageName};

import android.view.View;

import ${applicationPackage}.R;
import ${applicationPackage}.activities.BaseMvpFragment;

public class ${mvpName}Fragment extends BaseMvpFragment<${mvpName}Contract.Presenter> implements ${mvpName}Contract.View {

    @Override
    public int getLayoutRes() {
        return R.layout.${layoutMvpName}_fragment;
    }

    @Override
    public void initView(View root) {

    }
}
