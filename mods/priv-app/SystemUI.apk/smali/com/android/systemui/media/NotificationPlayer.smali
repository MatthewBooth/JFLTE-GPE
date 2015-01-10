.class public Lcom/android/systemui/media/NotificationPlayer;
.super Ljava/lang/Object;
.source "NotificationPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/NotificationPlayer$1;,
        Lcom/android/systemui/media/NotificationPlayer$CmdThread;,
        Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;,
        Lcom/android/systemui/media/NotificationPlayer$Command;
    }
.end annotation


# instance fields
.field private mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

.field private mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/systemui/media/NotificationPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletionHandlingLock:Ljava/lang/Object;

.field private mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

.field private mLooper:Landroid/os/Looper;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mQueueAudioFocusLock:Ljava/lang/Object;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "NotificationPlayer"

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;
    .locals 1
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/media/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;
    .param p1    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;
    .locals 1
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;
    .param p1    # Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;
    .param p1    # Landroid/media/MediaPlayer;

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;
    .locals 1
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 0
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;
    .param p1    # Lcom/android/systemui/media/NotificationPlayer$Command;

    invoke-direct {p0, p1}, Lcom/android/systemui/media/NotificationPlayer;->startSound(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$CmdThread;)Lcom/android/systemui/media/NotificationPlayer$CmdThread;
    .locals 0
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;
    .param p1    # Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/media/NotificationPlayer;)V
    .locals 0
    .param p0    # Lcom/android/systemui/media/NotificationPlayer;

    invoke-direct {p0}, Lcom/android/systemui/media/NotificationPlayer;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/media/NotificationPlayer;->acquireWakeLock()V

    new-instance v0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/NotificationPlayer$CmdThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;)V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-virtual {v0}, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->start()V

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private startSound(Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 8
    .param p1    # Lcom/android/systemui/media/NotificationPlayer$Command;

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    :cond_0
    new-instance v3, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V

    iput-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    iget-object v5, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->start()V

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    sub-long v0, v4, v6

    const-wide/16 v4, 0x3e8

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification sound delayed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msecs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1    # Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;
    .param p3    # Z
    .param p4    # Landroid/media/AudioAttributes;

    const/4 v4, 0x1

    new-instance v0, Lcom/android/systemui/media/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer$Command;-><init>(Lcom/android/systemui/media/NotificationPlayer$1;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    iput v4, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    iput-object p1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    iput-object p2, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    iput-boolean p3, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    iput-object p4, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/media/NotificationPlayer;->enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertion failed mWakeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public stop()V
    .locals 6

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    if-eq v1, v3, :cond_0

    new-instance v0, Lcom/android/systemui/media/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer$Command;-><init>(Lcom/android/systemui/media/NotificationPlayer$1;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/NotificationPlayer;->enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
