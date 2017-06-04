package ${packageName}.activities;

public abstract class BasePresenterImpl<V extends BaseView> implements BasePresenter {

    final protected V mView;

    protected BasePresenterImpl(V view){
        mView = view;
    }

    @Override
    public void onViewCreated() {

    }

    @Override
    public void onViewStart() {

    }

    @Override
    public void onViewDestroy() {

    }
}
