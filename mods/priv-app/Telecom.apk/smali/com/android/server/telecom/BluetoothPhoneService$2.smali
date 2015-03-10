.class final Lcom/android/server/telecom/BluetoothPhoneService$2;
.super Landroid/os/Handler;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;

    :goto_0
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;
    invoke-static {v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$400(Lcom/android/server/telecom/BluetoothPhoneService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v5

    const-string v6, "BluetoothPhoneService"

    const-string v7, "handleMessage(%d) / param %s"

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    if-nez v0, :cond_2

    move-object v2, v1

    :goto_1
    aput-object v2, v8, v3

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget v2, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v5, v2, v1}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    :cond_3
    if-eqz v2, :cond_4

    move v1, v3

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_4
    if-eqz v2, :cond_5

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :cond_5
    move v3, v4

    goto :goto_5

    :pswitch_1
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v5, v2}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    :cond_6
    if-eqz v2, :cond_7

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_6

    :catchall_1
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_7
    if-eqz v2, :cond_8

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :cond_8
    move v3, v4

    goto :goto_8

    :pswitch_2
    :try_start_4
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_9

    :try_start_5
    iget v1, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    int-to-char v1, v1

    invoke-virtual {v5, v2, v1}, Lcom/android/server/telecom/CallsManager;->playDtmfTone(Lcom/android/server/telecom/Call;C)V

    invoke-virtual {v5, v2}, Lcom/android/server/telecom/CallsManager;->stopDtmfTone(Lcom/android/server/telecom/Call;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    :cond_9
    if-eqz v2, :cond_a

    :goto_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_a
    if-eqz v2, :cond_b

    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :cond_b
    move v3, v4

    goto :goto_b

    :pswitch_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :try_start_6
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    iget v3, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    invoke-static {v1, v3}, Lcom/android/server/telecom/BluetoothPhoneService;->access$500(Lcom/android/server/telecom/BluetoothPhoneService;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_3
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :pswitch_4
    :try_start_7
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v1

    :cond_c
    :try_start_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move-result-object v1

    :cond_d
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_4
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_c
    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :pswitch_5
    :try_start_9
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-result-object v1

    :goto_d
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_e
    :try_start_a
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result-object v1

    goto :goto_d

    :catchall_5
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v2

    :pswitch_6
    :try_start_b
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    iget v2, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    if-ne v2, v3, :cond_f

    move v4, v3

    :cond_f
    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->sendListOfCalls(Z)V
    invoke-static {v1, v4}, Lcom/android/server/telecom/BluetoothPhoneService;->access$700(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_6
    move-exception v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :pswitch_7
    :try_start_c
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v1, v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$800(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_7
    move-exception v1

    if-eqz v0, :cond_10

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    :cond_10
    throw v1

    :catchall_8
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_c

    :catchall_9
    move-exception v1

    goto/16 :goto_a

    :catchall_a
    move-exception v1

    goto/16 :goto_7

    :catchall_b
    move-exception v1

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method
