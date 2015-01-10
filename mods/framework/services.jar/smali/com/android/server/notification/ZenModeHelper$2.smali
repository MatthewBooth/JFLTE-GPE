.class Lcom/android/server/notification/ZenModeHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$2;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$2;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$300(Lcom/android/server/notification/ZenModeHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$2;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mRingerModeChanged:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$200(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
