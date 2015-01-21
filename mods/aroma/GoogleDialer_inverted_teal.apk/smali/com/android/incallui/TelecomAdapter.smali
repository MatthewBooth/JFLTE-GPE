.class final Lcom/android/incallui/TelecomAdapter;
.super Ljava/lang/Object;
.source "TelecomAdapter.java"


# static fields
.field private static sInstance:Lcom/android/incallui/TelecomAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhone:Landroid/telecom/Phone;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/android/incallui/TelecomAdapter;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    sget-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/TelecomAdapter;

    invoke-direct {v0}, Lcom/android/incallui/TelecomAdapter;-><init>()V

    sput-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    :cond_0
    sget-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method addCall()V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "add_call_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    const-string v2, "Sending the add Call intent"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Activity for adding calls isn\'t found."

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method answerCall(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/telecom/Call;->answer(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error answerCall, call not in call list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "error answerCall, mPhone is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearPhone()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    return-void
.end method

.method disconnectCall(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->disconnect()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error disconnectCall, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method holdCall(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->hold()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error holdCall, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method merge(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call;

    invoke-virtual {v0, v3}, Landroid/telecom/Call;->conference(Landroid/telecom/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v1

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Call;->mergeConference()V

    goto :goto_0

    :cond_2
    const-string v3, "error merge, mPhone is null."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method mute(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setMuted(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error mute, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/telecom/PhoneAccountHandle;

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Call;->phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;)V

    :goto_0
    if-nez p2, :cond_0

    const-string v0, "error phoneAccountSelected, accountHandle is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "error phoneAccountSelected, mAdapter is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method playDtmfTone(Ljava/lang/String;C)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # C

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Call;->playDtmfTone(C)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error playDtmfTone, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method postDialContinue(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Call;->postDialContinue(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error postDialContinue, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error rejectCall, call not in call list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "error rejectCall, mPhone is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method separateCall(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->splitFromConference()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error separateCall, mPhone is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setAudioRoute(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setAudioRoute(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error setAudioRoute, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/incallui/TelecomAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setPhone(Landroid/telecom/Phone;)V
    .locals 0
    .param p1    # Landroid/telecom/Phone;

    iput-object p1, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    return-void
.end method

.method stopDtmfTone(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->stopDtmfTone()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error stopDtmfTone, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method swap(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v1

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Call;->swapConference()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Error swap, mPhone is null."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method turnOffProximitySensor(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setProximitySensorOff(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error setProximitySensorOff, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method turnOnProximitySensor()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->setProximitySensorOn()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error setProximitySensorOn, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method unholdCall(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->unhold()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "error unholdCall, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
