package ${packageName};

import android.view.View;

import ${applicationPackage}.R;
import ${applicationPackage}.activities.BaseMVPFragment;

public class ${mvpName}Fragment extends BaseMVPFragment<${mvpName}Contract.Presenter> implements ${mvpName}Contract.View {

    @Override
    public int getLayoutRes() {
        return R.layout.${layoutMvpName}_fragment;
    }

    @Override
    public void initView(View root) {

    }
}
