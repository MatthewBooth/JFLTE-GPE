.class final Lcom/android/server/telecom/WiredHeadsetManager;
.super Ljava/lang/Object;
.source "WiredHeadsetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;,
        Lcom/android/server/telecom/WiredHeadsetManager$Listener;
    }
.end annotation


# instance fields
.field private mIsPluggedIn:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/WiredHeadsetManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/android/server/telecom/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mListeners:Ljava/util/Set;

    new-instance v0, Lcom/android/server/telecom/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/server/telecom/WiredHeadsetManager;B)V

    iput-object v0, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mReceiver:Lcom/android/server/telecom/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mIsPluggedIn:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mReceiver:Lcom/android/server/telecom/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/WiredHeadsetManager;Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mIsPluggedIn:Z

    if-eq v0, p1, :cond_0

    const-string v0, "onHeadsetPluggedInChanged, mIsPluggedIn: %b -> %b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mIsPluggedIn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mIsPluggedIn:Z

    iput-boolean p1, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mIsPluggedIn:Z

    iget-object v0, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/WiredHeadsetManager$Listener;

    iget-boolean v2, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mIsPluggedIn:Z

    invoke-interface {v0, v2}, Lcom/android/server/telecom/WiredHeadsetManager$Listener;->onWiredHeadsetPluggedInChanged$25decb5(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final addListener(Lcom/android/server/telecom/WiredHeadsetManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final isPluggedIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/WiredHeadsetManager;->mIsPluggedIn:Z

    return v0
.end method
