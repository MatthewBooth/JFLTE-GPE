.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

.field final synthetic val$mp:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;->val$mp:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;->val$mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->handleCompletion(Landroid/media/MediaPlayer;)V

    return-void
.end method
