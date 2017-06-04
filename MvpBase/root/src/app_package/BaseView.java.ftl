package ${packageName}.activities;


public interface BaseView<T> {

    void setPresenter(T presenter);

    /**
     * 显示Toast消息，对应{@link BaseView#showToast(String)}
     */
    void showToast(String msg);

    /**
     * 显示加载的提示框
     */
    void showLoading(String msg);

    /**
     * 隐藏加载提示框
     */
    void hideLoading();
}
