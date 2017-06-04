package ${packageName}.helper;

import android.content.Context;
import android.support.annotation.StringRes;
import android.text.TextUtils;
import android.widget.Toast;

/**
 * Toast帮助类
 */
public class ToastHelper
{
    private static ToastHelper ourInstance = new ToastHelper();

    private Context mContext;

    private Toast mToast;

    private String mMessage;

    private ToastHelper() {}

    public static ToastHelper getInstance() {
        return ourInstance;
    }

    public void show(Context context, String msg)
    {
        Toast toast = getToast(context,msg);
        toast.show();
    }

    public void show(Context context,@StringRes int stringRes)
    {
        show(context,context.getResources().getString(stringRes));
    }

    private Toast getToast(Context context,String msg)
    {
        if(mToast == null)
        {
            mContext = context;
            mToast = Toast.makeText(mContext,msg,Toast.LENGTH_SHORT);
        }
        else if(mContext != context)
        {
            mContext = context;
            mToast.cancel();
            mToast = Toast.makeText(mContext,msg,Toast.LENGTH_SHORT);
        }
        else if(!TextUtils.equals(msg,mMessage))
        {
            mToast.cancel();
            mToast = Toast.makeText(mContext,msg,Toast.LENGTH_SHORT);
        }

        mMessage = msg;

        return mToast;
    }
}


