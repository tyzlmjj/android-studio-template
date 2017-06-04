package ${packageName}.activities;

import ${superClassFqcn};
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentTransaction;

/**
 * MVP Activity 基础类
 */
public abstract class BaseMVPActivity<P extends BasePresenter,V extends BaseMVPFragment<P>> extends BaseActivity {

    protected P mPresenter;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout_framelayout);

        V fragment = (V) getSupportFragmentManager().findFragmentById(R.id.layout_root);

        if(fragment == null){
            fragment = createView();
            FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
            transaction.add(R.id.layout_root,fragment);
            transaction.commit();
        }

        mPresenter = createPresenter(fragment);

        fragment.setPresenter(mPresenter);
    }

    abstract protected V createView();

    abstract protected P createPresenter(V view);
}
