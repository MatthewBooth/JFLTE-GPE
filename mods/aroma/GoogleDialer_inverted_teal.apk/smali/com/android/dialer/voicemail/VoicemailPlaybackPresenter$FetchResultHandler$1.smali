.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;
.super Landroid/os/AsyncTask;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1    # [Ljava/lang/Void;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$000(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->queryHasContent(Landroid/net/Uri;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->access$400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # invokes: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->postSuccessfullyFetchedContent()V
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$200(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
