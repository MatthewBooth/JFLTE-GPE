.class Lcom/android/dialer/CallDetailActivity$4;
.super Landroid/os/AsyncTask;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->onMenuTrashVoicemail(Landroid/view/MenuItem;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$4;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1    # [Ljava/lang/Void;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$4;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$4;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mVoicemailUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/dialer/CallDetailActivity;->access$1600(Lcom/android/dialer/CallDetailActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1    # Ljava/lang/Void;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$4;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->finish()V

    return-void
.end method
