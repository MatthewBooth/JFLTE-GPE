.class public abstract Lcom/android/incallui/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/incallui/Presenter",
        "<TU;>;U::",
        "Lcom/android/incallui/Ui;",
        ">",
        "Landroid/app/Fragment;"
    }
.end annotation


# instance fields
.field private mPresenter:Lcom/android/incallui/Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->createPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    return-void
.end method


# virtual methods
.method abstract createPresenter()Lcom/android/incallui/Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getPresenter()Lcom/android/incallui/Presenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    return-object v0
.end method

.method abstract getUi()Lcom/android/incallui/Ui;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/BaseFragment;->mPresenter:Lcom/android/incallui/Presenter;

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/Presenter;->onUiDestroy(Lcom/android/incallui/Ui;)V

    return-void
.end method
