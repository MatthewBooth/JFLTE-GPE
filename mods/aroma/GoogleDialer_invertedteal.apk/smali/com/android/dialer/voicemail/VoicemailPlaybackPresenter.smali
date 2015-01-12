.class public Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$AsyncPrepareTask;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    }
.end annotation


# static fields
.field private static final CLIP_POSITION_KEY:Ljava/lang/String;

.field private static final PAUSED_STATE_KEY:Ljava/lang/String;

.field private static final PRESET_NAMES:[I

.field private static final PRESET_RATES:[F


# instance fields
.field private final mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field private final mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

.field private final mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

.field private final mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

.field private mPrepareTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation
.end field

.field private mRateIndex:I

.field private final mStartPlayingImmediately:Z

.field private final mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

.field private final mVoicemailUri:Landroid/net/Uri;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PAUSED_STATE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PAUSED_STATE_KEY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CLIP_POSITION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-void

    :array_0
    .array-data 4
        0x3f23d70a
        0x3f4ccccd
        0x3f800000
        0x3fa00000
        0x3fc80000
    .end array-data

    :array_1
    .array-data 4
        0x7f08020a
        0x7f08020b
        0x7f08020c
        0x7f08020d
        0x7f08020e
    .end array-data
.end method

.method public constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;Lcom/android/ex/variablespeed/MediaPlayerProxy;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/dialer/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;)V
    .locals 2
    .param p1    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .param p2    # Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .param p3    # Landroid/net/Uri;
    .param p4    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p5    # Z
    .param p6    # Lcom/android/dialer/util/AsyncTaskExecutor;
    .param p7    # Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    iput-object p3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    iput-boolean p5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    iput-object p6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    const/16 v1, 0x21

    invoke-direct {v0, p0, p4, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Ljava/util/concurrent/ScheduledExecutorService;I)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iput-object p7, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Exception;)V
    .locals 0
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1    # Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)I
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)I
    .locals 0
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1    # I

    iput p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return p1
.end method

.method static synthetic access$1600()[F
    .locals 1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    return-object v0
.end method

.method static synthetic access$1700(III)I
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->constrain(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()[I
    .locals 1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;FI)V
    .locals 0
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1    # F
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->changeRate(FI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->postSuccessfullyFetchedContent()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1    # Landroid/os/AsyncTask;

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;II)V
    .locals 0
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)V
    .locals 0
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->makeRequestForContent()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/util/AsyncTaskExecutor;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p0    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->postSuccessfulPrepareActions()V

    return-void
.end method

.method private changeRate(FI)V
    .locals 1
    .param p1    # F
    .param p2    # I

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    check-cast v0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;

    invoke-virtual {v0, p1}, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->setVariableSpeed(F)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDisplay(FI)V

    return-void
.end method

.method private checkThatWeHaveContent()V
    .locals 4

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsFetchingContent()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static constrain(III)I
    .locals 0
    .param p0    # I
    .param p1    # I
    .param p2    # I

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackError(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V

    return-void
.end method

.method private makeRequestForContent()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "mFetchResultHandler should be null"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-interface {v1, v2, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->getTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->sendFetchVoicemailRequest(Landroid/net/Uri;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postSuccessfulPrepareActions()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableUiElements()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setPositionSeekListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setStartStopListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->createRateDecreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->createRateIncreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    :cond_0
    return-void
.end method

.method private postSuccessfullyFetchedContent()V
    .locals 4

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsBuffering()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private resetPrepareStartPlaying(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->RESET_PREPARE_START_MEDIA_PLAYER:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$AsyncPrepareTask;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$AsyncPrepareTask;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private stopPlaybackAtPosition(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->pause()V

    :cond_1
    return-void
.end method


# virtual methods
.method public createRateDecreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public createRateIncreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public handleCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1    # Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setVolumeControlStream(I)V

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->checkThatWeHaveContent()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PAUSED_STATE_KEY:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
