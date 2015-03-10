.class Lcom/android/services/telephony/TelephonyConnection$1;
.super Landroid/os/Handler;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const/4 v5, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v3, "MSG_PRECISE_CALL_STATE_CHANGED"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v3, "MSG_HANDOVER_STATE_CHANGED"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2, v1}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v3, "MSG_RINGBACK_TONE"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # invokes: Lcom/android/services/telephony/TelephonyConnection;->getForegroundConnection()Lcom/android/internal/telephony/Connection;
    invoke-static {v3}, Lcom/android/services/telephony/TelephonyConnection;->access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v3, "handleMessage, original connection is not foreground connection, skipping"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/services/telephony/TelephonyConnection;->setRingbackRequested(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
