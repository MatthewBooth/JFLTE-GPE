.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MediaPlayer error listener invoked"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V
    invoke-static {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Exception;)V

    return-void
.end method
