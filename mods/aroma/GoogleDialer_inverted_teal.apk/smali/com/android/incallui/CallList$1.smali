.class Lcom/android/incallui/CallList$1;
.super Landroid/telecom/Phone$Listener;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallList;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-direct {p0}, Landroid/telecom/Phone$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 3
    .param p1    # Landroid/telecom/Phone;
    .param p2    # Landroid/telecom/Call;

    new-instance v0, Lcom/android/incallui/Call;

    invoke-direct {v0, p2}, Lcom/android/incallui/Call;-><init>(Landroid/telecom/Call;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/CallList;->onIncoming(Lcom/android/incallui/Call;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 3
    .param p1    # Landroid/telecom/Phone;
    .param p2    # Landroid/telecom/Call;

    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    # getter for: Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/incallui/CallList;->access$000(Lcom/android/incallui/CallList;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    # getter for: Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/incallui/CallList;->access$000(Lcom/android/incallui/CallList;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    # invokes: Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z
    invoke-static {v1, v0}, Lcom/android/incallui/CallList;->access$100(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing call not previously disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    const/4 v2, 0x0

    # invokes: Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V
    invoke-static {v1, v0, v2}, Lcom/android/incallui/CallList;->access$200(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Ljava/util/List;)V

    :cond_1
    return-void
.end method
