.class Lcom/android/incallui/Call$1;
.super Landroid/telecom/Call$Listener;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    invoke-direct {p0}, Landroid/telecom/Call$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDestroyed(Landroid/telecom/Call;)V
    .locals 1
    .param p1    # Landroid/telecom/Call;

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # getter for: Lcom/android/incallui/Call;->mTelecommCallListener:Landroid/telecom/Call$Listener;
    invoke-static {v0}, Lcom/android/incallui/Call;->access$100(Lcom/android/incallui/Call;)Landroid/telecom/Call$Listener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->removeListener(Landroid/telecom/Call$Listener;)V

    return-void
.end method

.method public onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 1
    .param p1    # Landroid/telecom/Call;
    .param p2    # Landroid/telecom/Call$Details;

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V
    .locals 1
    .param p1    # Landroid/telecom/Call;
    .param p2    # Landroid/telecom/Call;

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/telecom/Call;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 1
    .param p1    # Landroid/telecom/Call;
    .param p2    # I

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V
    .locals 1
    .param p1    # Landroid/telecom/Call;
    .param p2    # Landroid/telecom/InCallService$VideoCall;

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method
