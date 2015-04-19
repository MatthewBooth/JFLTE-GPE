.class public Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
.super Lcom/android/dialerbind/analytics/AnalyticsFragment;
.source "VoicemailPlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$1;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$ActivityReference;
    }
.end annotation


# static fields
.field private static final HAS_CONTENT_PROJECTION:[Ljava/lang/String;

.field private static mMediaPlayerInstance:Lcom/android/ex/variablespeed/MediaPlayerProxy;

.field private static mMediaPlayerRefCount:I

.field private static mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private mPlaybackLayout:Landroid/view/View;

.field private mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "has_content"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    sput v2, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerRefCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    invoke-static {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private createPlaybackViewImpl()Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;
    .locals 4

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$ActivityReference;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$ActivityReference;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$1;)V

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mPlaybackLayout:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$ActivityReference;Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method private static formatAsMinutesAndSeconds(I)Ljava/lang/String;
    .locals 6
    .param p0    # I

    div-int/lit16 v1, p0, 0x3e8

    div-int/lit8 v0, v1, 0x3c

    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr v1, v2

    const/16 v2, 0x63

    if-le v0, v2, :cond_0

    const/16 v0, 0x63

    :cond_0
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static declared-synchronized getMediaPlayerInstance()Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .locals 2

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerRefCount:I

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerInstance:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->getScheduledExecutorServiceInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/variablespeed/VariableSpeed;->createVariableSpeed(Ljava/util/concurrent/Executor;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerInstance:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    :cond_0
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerInstance:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getScheduledExecutorServiceInstance()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized shutdownMediaPlayer()V
    .locals 2

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerRefCount:I

    sget v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_2
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerInstance:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerInstance:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mMediaPlayerInstance:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v0, "fragment must be started with arguments"

    invoke-static {v8, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v0, "fragment must contain EXTRA_VOICEMAIL_URI"

    invoke-static {v3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    const/4 v0, 0x6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->createPlaybackViewImpl()Lcom/android/dialer/voicemail/VoicemailPlaybackFragment$PlaybackViewImpl;

    move-result-object v1

    invoke-static {}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->getMediaPlayerInstance()Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v2

    invoke-static {}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->getScheduledExecutorServiceInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;Lcom/android/ex/variablespeed/MediaPlayerProxy;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/dialer/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v0, 0x7f040037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mPlaybackLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mPlaybackLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->shutdownMediaPlayer()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onDestroy()V

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onPause()V

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onPause()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
