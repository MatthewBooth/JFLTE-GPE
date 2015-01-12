.class public interface abstract Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaybackView"
.end annotation


# virtual methods
.method public abstract disableProximitySensor()V
.end method

.method public abstract enableProximitySensor()V
.end method

.method public abstract enableUiElements()V
.end method

.method public abstract getDataSourceContext()Landroid/content/Context;
.end method

.method public abstract getDesiredClipPosition()I
.end method

.method public abstract isSpeakerPhoneOn()Z
.end method

.method public abstract playbackError(Ljava/lang/Exception;)V
.end method

.method public abstract playbackStarted()V
.end method

.method public abstract playbackStopped()V
.end method

.method public abstract queryHasContent(Landroid/net/Uri;)Z
.end method

.method public abstract registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract sendFetchVoicemailRequest(Landroid/net/Uri;)V
.end method

.method public abstract setClipPosition(II)V
.end method

.method public abstract setFetchContentTimeout()V
.end method

.method public abstract setIsBuffering()V
.end method

.method public abstract setIsFetchingContent()V
.end method

.method public abstract setPositionSeekListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
.end method

.method public abstract setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setRateDisplay(FI)V
.end method

.method public abstract setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setSpeakerPhoneOn(Z)V
.end method

.method public abstract setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setStartStopListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setVolumeControlStream(I)V
.end method

.method public abstract unregisterContentObserver(Landroid/database/ContentObserver;)V
.end method
