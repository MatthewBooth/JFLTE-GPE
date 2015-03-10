.class final Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;
.super Landroid/os/Handler;
.source "InCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/InCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InCallAdapterHandler"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/InCallAdapter;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/InCallAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/InCallAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;-><init>(Lcom/android/server/telecom/InCallAdapter;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v3}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "answerCall, unknown call id: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_2
    iget-object v3, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v3}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v4, v1, :cond_1

    move v2, v1

    :cond_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v4}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/server/telecom/CallsManager;->rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v1, "setRingback, unknown call id: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-char v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/CallsManager;->playDtmfTone(Lcom/android/server/telecom/Call;C)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "playDtmfTone, unknown call id: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->stopDtmfTone(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "stopDtmfTone, unknown call id: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v4, v3, v0}, Lcom/android/server/telecom/CallsManager;->postDialContinue(Lcom/android/server/telecom/Call;Z)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v3}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_6

    :goto_4
    invoke-virtual {v3, v0, v1}, Lcom/android/server/telecom/CallsManager;->postDialContinue(Lcom/android/server/telecom/Call;Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    const-string v0, "postDialContinue, unknown call id: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "disconnectCall, unknown call id: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->holdCall(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "holdCall, unknown call id: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->unholdCall(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "unholdCall, unknown call id: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_4
    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/telecom/CallsManager;->phoneAccountSelected(Lcom/android/server/telecom/Call;Landroid/telecom/PhoneAccountHandle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_b
    :try_start_5
    const-string v1, "phoneAccountSelected, unknown call id: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_c

    :goto_6
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->mute(Z)V

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto :goto_6

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->setAudioRoute(I)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_6
    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v2}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v3}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    invoke-static {v1, v2}, Lcom/android/server/telecom/CallsManager;->conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_d
    :try_start_7
    const-string v1, "conference, unknown call id: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->splitFromConference()V

    goto/16 :goto_0

    :cond_e
    const-string v0, "splitFromConference, unknown call id: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->turnOnProximitySensor()V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->turnOffProximitySensor(Z)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->mergeConference()V

    goto/16 :goto_0

    :cond_f
    const-string v0, "mergeConference, unknown call id: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;->this$0:Lcom/android/server/telecom/InCallAdapter;

    # getter for: Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/InCallAdapter;->access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->swapConference()V

    goto/16 :goto_0

    :cond_10
    const-string v0, "swapConference, unknown call id: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
