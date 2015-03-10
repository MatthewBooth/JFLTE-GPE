.class public Lcom/android/services/telephony/EmergencyCallHelper;
.super Ljava/lang/Object;
.source "EmergencyCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/EmergencyCallHelper$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mNumRetriesSoFar:I

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/EmergencyCallHelper$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/EmergencyCallHelper$1;-><init>(Lcom/android/services/telephony/EmergencyCallHelper;)V

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const-string v0, "EmergencyCallHelper constructor."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/EmergencyCallHelper;Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/EmergencyCallHelper;
    .param p1    # Lcom/android/internal/telephony/Phone;
    .param p2    # Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/EmergencyCallHelper;->startSequenceInternal(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/EmergencyCallHelper;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/EmergencyCallHelper;
    .param p1    # Landroid/telephony/ServiceState;

    invoke-direct {p0, p1}, Lcom/android/services/telephony/EmergencyCallHelper;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/EmergencyCallHelper;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/EmergencyCallHelper;

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->onRetryTimeout()V

    return-void
.end method

.method private cancelRetryTimer()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cleanup()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "cleanup()"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cancelRetryTimer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iput v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    return-void
.end method

.method private isOkToCall(ILcom/android/internal/telephony/PhoneConstants$State;)Z
    .locals 3
    .param p1    # I
    .param p2    # Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v0, 0x1

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p2, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onComplete(Z)V
    .locals 2
    .param p1    # Z

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/EmergencyCallHelper$Callback;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method private onRetryTimeout()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    iget-object v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const-string v2, "onRetryTimeout():  phone state = %s, service state = %d, retries = %d."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0}, Lcom/android/services/telephony/EmergencyCallHelper;->isOkToCall(ILcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "onRetryTimeout: Radio is on. Cleaning up."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v7}, Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumRetriesSoFar is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    const-string v2, "Hit MAX_NUM_RETRIES; giving up."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    goto :goto_0

    :cond_1
    const-string v2, "Trying (again) to turn on the radio."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->powerOnRadio()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->startRetryTimer()V

    goto :goto_0
.end method

.method private onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1    # Landroid/telephony/ServiceState;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onServiceStateChanged(), new state = %s."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/EmergencyCallHelper;->isOkToCall(ILcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onServiceStateChanged: ok to call!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "onServiceStateChanged: not ready to call yet, keep waiting."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private powerOnRadio()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "powerOnRadio()."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->registerForServiceStateChanged()V

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "==> Turning off airplane mode."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "==> (Apparently) not in airplane mode; manually powering radio on."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method private registerForServiceStateChanged()V
    .locals 4

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private startRetryTimer()V
    .locals 4

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cancelRetryTimer()V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startSequenceInternal(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V
    .locals 2
    .param p1    # Lcom/android/internal/telephony/Phone;
    .param p2    # Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    const-string v0, "startSequenceInternal()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    iput-object p1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->powerOnRadio()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->startRetryTimer()V

    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public startTurnOnRadioSequence(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V
    .locals 3
    .param p1    # Lcom/android/internal/telephony/Phone;
    .param p2    # Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    const-string v1, "startTurnOnRadioSequence"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
