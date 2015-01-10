.class Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;
.super Landroid/content/BroadcastReceiver;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSaveModeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    # getter for: Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->access$200(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    # getter for: Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->access$000(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    # invokes: Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onPowerSaveModeChangedLocked(Z)V
    invoke-static {v1, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->access$300(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
