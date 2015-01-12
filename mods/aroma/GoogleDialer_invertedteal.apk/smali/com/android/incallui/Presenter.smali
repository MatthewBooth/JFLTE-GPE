.class public abstract Lcom/android/incallui/Presenter;
.super Ljava/lang/Object;
.source "Presenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/android/incallui/Ui;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mUi:Lcom/android/incallui/Ui;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUi()Lcom/android/incallui/Ui;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/Presenter;->mUi:Lcom/android/incallui/Ui;

    return-object v0
.end method

.method public final onUiDestroy(Lcom/android/incallui/Ui;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/Presenter;->mUi:Lcom/android/incallui/Ui;

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/incallui/Presenter;->mUi:Lcom/android/incallui/Ui;

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    return-void
.end method
