.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->access$2500(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->access$2600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getCurrentPosition()I

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v2, v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
