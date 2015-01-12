.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackPositionListener"
.end annotation


# instance fields
.field private mShouldResumePlaybackAfterSeeking:Z

.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method private constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V
    .locals 0
    .param p1    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p2    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;

    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1    # Landroid/widget/SeekBar;
    .param p2    # I
    .param p3    # Z

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1    # Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->mShouldResumePlaybackAfterSeeking:Z

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    # invokes: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V
    invoke-static {v0, v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;II)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->mShouldResumePlaybackAfterSeeking:Z

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1    # Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    # invokes: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V
    invoke-static {v0, v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;II)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->mShouldResumePlaybackAfterSeeking:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v1

    # invokes: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V
    invoke-static {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)V

    :cond_1
    return-void
.end method
