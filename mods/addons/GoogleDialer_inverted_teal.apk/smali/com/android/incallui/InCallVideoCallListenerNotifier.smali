.class public Lcom/android/incallui/InCallVideoCallListenerNotifier;
.super Ljava/lang/Object;
.source "InCallVideoCallListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;,
        Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;,
        Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/InCallVideoCallListenerNotifier;


# instance fields
.field private final mSessionModificationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/incallui/InCallVideoCallListenerNotifier;

    invoke-direct {v0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallListenerNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    const v1, 0x3f666666

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSessionModificationListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mVideoEventListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallListenerNotifier;

    return-object v0
.end method


# virtual methods
.method public addSessionModificationListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoEventListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cameraDimensionsChanged(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # I
    .param p3    # I

    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;->onCameraDimensionsChange(Lcom/android/incallui/Call;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public downgradeToAudio(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1    # Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;->onDowngradeToAudio(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peerDimensionsChanged(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # I
    .param p3    # I

    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;->onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peerPausedStateChanged(Lcom/android/incallui/Call;Z)V
    .locals 3
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # Z

    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;

    invoke-interface {v1, p1, p2}, Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;->onPeerPauseStateChanged(Lcom/android/incallui/Call;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeVideoEventListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public upgradeToVideoFail(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1    # Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;->onUpgradeToVideoFail(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public upgradeToVideoRequest(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1    # Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;->onUpgradeToVideoRequest(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public upgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1    # Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallListenerNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;->onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method
