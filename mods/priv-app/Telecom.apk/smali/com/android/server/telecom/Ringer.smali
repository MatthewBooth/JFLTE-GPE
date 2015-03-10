.class final Lcom/android/server/telecom/Ringer;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "Ringer.java"


# static fields
.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VIBRATION_PATTERN:[J


# instance fields
.field private final mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

.field private mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mContext:Landroid/content/Context;

.field private mIsVibrating:Z

.field private final mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

.field private final mRingingCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mRingtonePlayer:Lcom/android/server/telecom/AsyncRingtonePlayer;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/telecom/Ringer;->VIBRATION_PATTERN:[J

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/Ringer;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void

    :array_0
    .array-data 8
        0x0
        0x3e8
        0x3e8
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/telecom/CallAudioManager;Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/InCallTonePlayer$Factory;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    iput-object p1, p0, Lcom/android/server/telecom/Ringer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    iput-object p2, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iput-object p3, p0, Lcom/android/server/telecom/Ringer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    iput-object p4, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0, p4}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mVibrator:Landroid/os/Vibrator;

    new-instance v0, Lcom/android/server/telecom/AsyncRingtonePlayer;

    invoke-direct {v0, p4}, Lcom/android/server/telecom/AsyncRingtonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/AsyncRingtonePlayer;

    return-void
.end method

.method private onRespondedToIncomingCall(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    goto :goto_0
.end method

.method private removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    return-void
.end method

.method private stopCallWaiting()V
    .locals 2

    const-string v0, "stop call waiting."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->stopTone()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    :cond_0
    return-void
.end method

.method private stopRinging()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "stopRinging"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/AsyncRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/AsyncRingtonePlayer;->stop()V

    iget-boolean v0, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iput-boolean v2, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/CallAudioManager;->setIsRinging(Z)V

    return-void
.end method

.method private updateRinging()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopRinging()V

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopCallWaiting()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    const-string v0, "startRingingOrCallWaiting, foregroundCall: %s."

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopCallWaiting()V

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v4, :cond_2

    const-string v6, "android.people"

    new-array v7, v1, [Ljava/lang/String;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "startRingingOrCallWaiting"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallAudioManager;->setIsRinging(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/AsyncRingtonePlayer;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getRingtone()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/AsyncRingtonePlayer;->play(Landroid/net/Uri;)V

    :goto_1
    iget-object v3, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vibrate_when_ringing"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    if-eqz v4, :cond_5

    move v0, v1

    :goto_3
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/server/telecom/Ringer;->VIBRATION_PATTERN:[J

    sget-object v3, Lcom/android/server/telecom/Ringer;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    iput-boolean v1, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "startRingingOrCallWaiting, skipping because volume is 0"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    if-ne v4, v1, :cond_7

    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_0

    const-string v0, "Playing call-waiting tone."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopRinging()V

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "New ringing call is already in list of unanswered calls"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    :cond_1
    return-void
.end method

.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    return-void
.end method

.method public final onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    :cond_1
    return-void
.end method

.method public final onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->onRespondedToIncomingCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->onRespondedToIncomingCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method final silence()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    return-void
.end method
