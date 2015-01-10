.class Lcom/android/systemui/doze/DozeService$4;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuzzBeepBlinked()V
    .locals 2

    # getter for: Lcom/android/systemui/doze/DozeService;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBuzzBeepBlinked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # invokes: Lcom/android/systemui/doze/DozeService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1400(Lcom/android/systemui/doze/DozeService;)V

    return-void
.end method

.method public onNewNotifications()V
    .locals 2

    # getter for: Lcom/android/systemui/doze/DozeService;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNewNotifications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onNotificationLight(Z)V
    .locals 3
    .param p1    # Z

    # getter for: Lcom/android/systemui/doze/DozeService;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationLight on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1000(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-ne v0, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # setter for: Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z
    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeService;->access$1002(Lcom/android/systemui/doze/DozeService;Z)Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1000(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # invokes: Lcom/android/systemui/doze/DozeService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1400(Lcom/android/systemui/doze/DozeService;)V

    goto :goto_0
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # setter for: Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z
    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeService;->access$1502(Lcom/android/systemui/doze/DozeService;Z)Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1500(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mDreaming:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$000(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    # invokes: Lcom/android/systemui/doze/DozeService;->finishToSavePower()V
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1600(Lcom/android/systemui/doze/DozeService;)V

    :cond_0
    return-void
.end method
