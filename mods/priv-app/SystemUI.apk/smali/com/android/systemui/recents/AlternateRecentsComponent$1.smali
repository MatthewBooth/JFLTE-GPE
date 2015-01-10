.class Lcom/android/systemui/recents/AlternateRecentsComponent$1;
.super Landroid/content/BroadcastReceiver;
.source "AlternateRecentsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/AlternateRecentsComponent;->onAnimationStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$1;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$1;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$1;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$1;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/AlternateRecentsComponent$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$1$1;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent$1;)V

    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
