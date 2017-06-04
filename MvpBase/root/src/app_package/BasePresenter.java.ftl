package ${packageName}.activities;

public interface BasePresenter {

    /**
     * 视图创建，在视图初始化完成时调用
     */
    void onViewCreated();

    /**
     * 在每次回到视图时调用
     */
    void onViewStart();

    /**
     * 视图销毁时调用
     */
    void onViewDestroy();
}
