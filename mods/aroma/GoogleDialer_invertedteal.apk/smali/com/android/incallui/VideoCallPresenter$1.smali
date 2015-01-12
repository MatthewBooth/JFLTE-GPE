.class Lcom/android/incallui/VideoCallPresenter$1;
.super Ljava/lang/Object;
.source "VideoCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/VideoCallPresenter;->onUpgradeToVideoFail(Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter$1;->this$0:Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter$1;->this$0:Lcom/android/incallui/VideoCallPresenter;

    # getter for: Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->access$000(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    return-void
.end method
