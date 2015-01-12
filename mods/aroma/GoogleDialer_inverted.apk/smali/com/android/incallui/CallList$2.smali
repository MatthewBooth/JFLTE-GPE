.class Lcom/android/incallui/CallList$2;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/incallui/CallList$2;->this$0:Lcom/android/incallui/CallList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message not expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "EVENT_DISCONNECTED_TIMEOUT "

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/incallui/CallList$2;->this$0:Lcom/android/incallui/CallList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/incallui/Call;)V
    invoke-static {v1, v0}, Lcom/android/incallui/CallList;->access$300(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
