.class Lcom/android/phone/OtaStartupReceiver$2;
.super Landroid/os/Handler;
.source "OtaStartupReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaStartupReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaStartupReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaStartupReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OtaStartupReceiver$2;->this$0:Lcom/android/phone/OtaStartupReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const/16 v5, 0xa

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v2, "OtaStartupReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting OtaActivation from handler, mOtaspMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/OtaStartupReceiver$2;->this$0:Lcom/android/phone/OtaStartupReceiver;

    # getter for: Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I
    invoke-static {v4}, Lcom/android/phone/OtaStartupReceiver;->access$000(Lcom/android/phone/OtaStartupReceiver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/OtaStartupReceiver$2;->this$0:Lcom/android/phone/OtaStartupReceiver;

    # getter for: Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/OtaStartupReceiver;->access$100(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OtaStartupReceiver$2;->this$0:Lcom/android/phone/OtaStartupReceiver;

    # getter for: Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/OtaStartupReceiver;->access$200(Lcom/android/phone/OtaStartupReceiver;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/phone/OtaStartupReceiver$2;->this$0:Lcom/android/phone/OtaStartupReceiver;

    # getter for: Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/OtaStartupReceiver;->access$100(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OtaStartupReceiver$2;->this$0:Lcom/android/phone/OtaStartupReceiver;

    # getter for: Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/OtaStartupReceiver;->access$200(Lcom/android/phone/OtaStartupReceiver;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
