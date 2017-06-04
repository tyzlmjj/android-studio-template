package ${packageName}.activities;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.helper.ToastHelper;

/**
 * MVP Fragment 基础类
 */
public abstract class BaseMVPFragment<P extends BasePresenter> extends Fragment implements BaseView<P>{

    protected P mPresenter;

    private ProgressDialog mLoadingDialog;

    /**
     * 获取布局文件资源
     */
    abstract public int getLayoutRes();

    /**
     * 初始化视图
     */
    abstract public void initView(View root);

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(getLayoutRes(),container,false);
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        initView(view);
        mPresenter.onViewCreated();
    }

    @Override
    public void onResume() {
        super.onResume();
        mPresenter.onViewStart();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        mPresenter.onViewDestroy();
    }

    @Override
    public void setPresenter(P presenter) {
        mPresenter = presenter;
    }

    @Override
    public void showToast(String msg) {
        ToastHelper.getInstance().show(getContext(),msg);
    }

    @Override
    public void showLoading(String msg) {
        if(mLoadingDialog == null){
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
            progressDialog.setCanceledOnTouchOutside(false);
            mLoadingDialog = progressDialog;
        }

        mLoadingDialog.setMessage(msg);
        mLoadingDialog.show();
    }

    @Override
    public void hideLoading() {
        if(mLoadingDialog != null && mLoadingDialog.isShowing()){
            mLoadingDialog.hide();
        }
    }

    /**
     * 显示Toolbar
     */
    protected void showToolbarWithBackBtn(Toolbar toolbar){
        Activity activity = getActivity();
        if(activity instanceof AppCompatActivity){
            ((AppCompatActivity)activity).setSupportActionBar(toolbar);
            ActionBar actionBar = ((AppCompatActivity) activity).getSupportActionBar();
            if(actionBar != null){
                actionBar.setDisplayHomeAsUpEnabled(true);
            }
        }
    }
}
