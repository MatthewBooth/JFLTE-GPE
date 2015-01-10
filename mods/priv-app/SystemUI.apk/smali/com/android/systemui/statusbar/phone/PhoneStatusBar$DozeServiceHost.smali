.class final Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DozeServiceHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/doze/DozeHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Ljava/lang/Runnable;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .param p1    # Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->handleStartDozing(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;Lcom/android/systemui/doze/DozeHost$PulseCallback;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .param p1    # Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->handlePulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->handleStopDozing()V

    return-void
.end method

.method private handlePulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;)V

    return-void
.end method

.method private handleStartDozing(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private handleStopDozing()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/doze/DozeHost$Callback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fireBuzzBeepBlinked()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$Callback;->onBuzzBeepBlinked()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireNewNotifications()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$Callback;->onNewNotifications()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireNotificationLight(Z)V
    .locals 3
    .param p1    # Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onNotificationLight(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public firePowerSaveChanged(Z)V
    .locals 3
    .param p1    # Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onPowerSaveChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isPowerSaveActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/doze/DozeHost$Callback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startDozing(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopDozing()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PSB.DozeServiceHost[mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
