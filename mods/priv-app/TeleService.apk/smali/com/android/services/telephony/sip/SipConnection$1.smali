.class Lcom/android/services/telephony/sip/SipConnection$1;
.super Landroid/os/Handler;
.source "SipConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/sip/SipConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipConnection$1;->this$0:Lcom/android/services/telephony/sip/SipConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection$1;->this$0:Lcom/android/services/telephony/sip/SipConnection;

    const/4 v1, 0x0

    # invokes: Lcom/android/services/telephony/sip/SipConnection;->updateState(Z)V
    invoke-static {v0, v1}, Lcom/android/services/telephony/sip/SipConnection;->access$000(Lcom/android/services/telephony/sip/SipConnection;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
