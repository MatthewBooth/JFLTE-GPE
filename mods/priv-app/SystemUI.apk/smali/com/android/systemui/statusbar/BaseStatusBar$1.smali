.class Lcom/android/systemui/statusbar/BaseStatusBar$1;
.super Landroid/database/ContentObserver;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1    # Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$000(Lcom/android/systemui/statusbar/BaseStatusBar;)Z

    move-result v3

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setZenMode(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$100(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method
