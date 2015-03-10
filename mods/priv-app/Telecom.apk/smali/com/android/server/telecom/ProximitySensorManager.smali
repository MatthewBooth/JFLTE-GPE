.class public Lcom/android/server/telecom/ProximitySensorManager;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "ProximitySensorManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mProximityWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/ProximitySensorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/ProximitySensorManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v2, 0x20

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/ProximitySensorManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_0
    const-string v0, "onCreate: mProximityWakeLock: "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    return-void
.end method

.method public final bridge synthetic onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallAdded(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "all calls removed, resetting proximity sensor to default state"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/ProximitySensorManager;->turnOff(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallRemoved(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallStateChanged(Lcom/android/server/telecom/Call;II)V

    return-void
.end method

.method public final bridge synthetic onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    return-void
.end method

.method public final bridge synthetic onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onIsConferencedChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsConferencedChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onRingbackRequested(Lcom/android/server/telecom/Call;Z)V

    return-void
.end method

.method final turnOff(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Releasing proximity wake lock"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "Proximity wake lock already released"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final turnOn()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Asking to turn on prox sensor without a call? I don\'t think so."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Acquiring proximity wake lock"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/ProximitySensorManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_2
    const-string v0, "Proximity wake lock already acquired"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
