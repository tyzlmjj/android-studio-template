package ${packageName}.activities;

import android.app.ProgressDialog;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;

import ${packageName}.R;

/**
 * Activity基础类
 */
public class BaseActivity extends AppCompatActivity {
    private ProgressDialog mLoadingDialog;

    /**
     * 显示加载的提示框
     */
    protected void showLoading(String message){
        if(mLoadingDialog == null){
            ProgressDialog progressDialog = new ProgressDialog(this);
            progressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
            progressDialog.setCanceledOnTouchOutside(false);
            mLoadingDialog = progressDialog;
        }

        mLoadingDialog.setMessage(message);
        mLoadingDialog.show();
    }

    /**
     * 隐藏加载提示框
     */
    protected void hideLoading(){
        if(mLoadingDialog != null && mLoadingDialog.isShowing()){
            mLoadingDialog.hide();
        }
    }

    /**
     * 显示Toolbar
     */
    protected void showToolbar(){
        View toolbar = findViewById(R.id.toolbar);
        if (toolbar != null && toolbar instanceof Toolbar){
            setSupportActionBar((Toolbar) toolbar);
        }
    }

    /**
     * 显示顶部返回按钮
     */
    protected void showBackBtn()
    {
        ActionBar actionBar = getSupportActionBar();
        if(actionBar != null)
        {
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item)
    {
        switch (item.getItemId())
        {
            case android.R.id.home:
                this.finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
