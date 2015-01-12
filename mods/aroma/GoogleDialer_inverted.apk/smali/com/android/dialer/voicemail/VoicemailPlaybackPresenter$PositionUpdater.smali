.class final Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PositionUpdater"
.end annotation


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private final mPeriodMillis:I

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final mSetClipPostitionRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method public constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 1
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3    # I

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mSetClipPostitionRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput p3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mPeriodMillis:I

    return-void
.end method

.method static synthetic access$2500(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mSetClipPostitionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startUpdating(II)V
    .locals 8
    .param p1    # I
    .param p2    # I

    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mPeriodMillis:I

    int-to-long v4, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopUpdating()V
    .locals 3

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

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
