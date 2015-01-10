.class final Lcom/android/server/tv/TvInputHal;
.super Ljava/lang/Object;
.source "TvInputHal.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHal$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final ERROR_NO_INIT:I = -0x1

.field public static final ERROR_STALE_CONFIG:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x3

.field public static final EVENT_DEVICE_AVAILABLE:I = 0x1

.field public static final EVENT_DEVICE_UNAVAILABLE:I = 0x2

.field public static final EVENT_FIRST_FRAME_CAPTURED:I = 0x4

.field public static final EVENT_STREAM_CONFIGURATION_CHANGED:I = 0x3

.field public static final SUCCESS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/android/server/tv/TvInputHal$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPtr:J

.field private final mStreamConfigGenerations:Landroid/util/SparseIntArray;

.field private final mStreamConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/tv/TvInputHal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHal$Callback;)V
    .locals 2
    .param p1    # Lcom/android/server/tv/TvInputHal$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mPendingMessageQueue:Ljava/util/Queue;

    iput-object p1, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private deviceAvailableFromNative(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 2
    .param p1    # Landroid/media/tv/TvInputHardwareInfo;

    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private deviceUnavailableFromNative(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private firstFrameCapturedFromNative(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static native nativeAddStream(JIILandroid/view/Surface;)I
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;
.end method

.method private native nativeOpen()J
.end method

.method private static native nativeRemoveStream(JII)I
.end method

.method private retrieveStreamConfigsLocked(I)V
    .locals 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-static {v2, v3, p1, v0}, Lcom/android/server/tv/TvInputHal;->nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private streamConfigsChangedFromNative(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public addStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I
    .locals 8
    .param p1    # I
    .param p2    # Landroid/view/Surface;
    .param p3    # Landroid/media/tv/TvStreamConfig;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v4, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    const/4 v1, -0x1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    move-result v3

    if-eq v0, v3, :cond_1

    const/4 v1, -0x2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-wide v4, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    move-result v3

    invoke-static {v4, v5, p1, v3, p2}, Lcom/android/server/tv/TvInputHal;->nativeAddStream(JIILandroid/view/Surface;)I

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    goto :goto_0

    :cond_2
    const/4 v1, -0x3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public close()V
    .locals 6

    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputHal;->nativeClose(J)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1    # Landroid/os/Message;

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    sget-object v4, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/tv/TvInputHardwareInfo;

    iget-object v5, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/tv/TvStreamConfig;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {v4, v2, v0}, Lcom/android/server/tv/TvInputHal$Callback;->onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {v4, v1}, Lcom/android/server/tv/TvInputHal$Callback;->onDeviceUnavailable(I)V

    goto :goto_1

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/tv/TvStreamConfig;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {v4, v1, v0}, Lcom/android/server/tv/TvInputHal$Callback;->onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;)V

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {v4, v1, v3}, Lcom/android/server/tv/TvInputHal$Callback;->onFirstFrameCaptured(II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHal;->nativeOpen()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeStream(ILandroid/media/tv/TvStreamConfig;)I
    .locals 8
    .param p1    # I
    .param p2    # Landroid/media/tv/TvStreamConfig;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v4, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    const/4 v1, -0x1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    move-result v3

    if-eq v0, v3, :cond_1

    const/4 v1, -0x2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-wide v4, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    move-result v3

    invoke-static {v4, v5, p1, v3}, Lcom/android/server/tv/TvInputHal;->nativeRemoveStream(JII)I

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    goto :goto_0

    :cond_2
    const/4 v1, -0x3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
