.class Lcom/android/keyguard/KeyguardTransportControlView$1;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->clearMetadata()V

    :cond_0
    return-void
.end method

.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 1
    .param p1    # Landroid/media/RemoteController$MetadataEditor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V

    return-void
.end method

.method public onClientNowPlayingContentChange()V
    .locals 0

    return-void
.end method

.method public onClientPlayItemResponse(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # invokes: Lcom/android/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$000(Lcom/android/keyguard/KeyguardTransportControlView;I)V

    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 4
    .param p1    # I
    .param p2    # J
    .param p4    # J
    .param p6    # F

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # invokes: Lcom/android/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$000(Lcom/android/keyguard/KeyguardTransportControlView;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$100(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$200(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$300(Lcom/android/keyguard/KeyguardTransportControlView;)I

    move-result v0

    # invokes: Lcom/android/keyguard/KeyguardTransportControlView;->playbackPositionShouldMove(I)Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$400(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$100(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$1;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # invokes: Lcom/android/keyguard/KeyguardTransportControlView;->updateTransportControls(I)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$500(Lcom/android/keyguard/KeyguardTransportControlView;I)V

    return-void
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .locals 0
    .param p1    # [J

    return-void
.end method
