.class final Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;
.super Landroid/os/Handler;
.source "TelecomServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainThreadHandler"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/TelecomServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/TelecomServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomServiceImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/TelecomServiceImpl;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;-><init>(Lcom/android/server/telecom/TelecomServiceImpl;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    iput-object v1, v0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomServiceImpl;

    # getter for: Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomServiceImpl;->access$000(Lcom/android/server/telecom/TelecomServiceImpl;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getRinger()Lcom/android/server/telecom/Ringer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/Ringer;->silence()V

    move-object v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomServiceImpl;

    # getter for: Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v3}, Lcom/android/server/telecom/TelecomServiceImpl;->access$000(Lcom/android/server/telecom/TelecomServiceImpl;)Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getInCallController()Lcom/android/server/telecom/InCallController;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/server/telecom/InCallController;->bringToForeground(Z)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomServiceImpl;

    invoke-static {v1}, Lcom/android/server/telecom/TelecomServiceImpl;->access$100(Lcom/android/server/telecom/TelecomServiceImpl;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomServiceImpl;

    invoke-static {v1}, Lcom/android/server/telecom/TelecomServiceImpl;->access$200(Lcom/android/server/telecom/TelecomServiceImpl;)V

    move-object v1, v2

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomServiceImpl;

    # getter for: Lcom/android/server/telecom/TelecomServiceImpl;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomServiceImpl;->access$300(Lcom/android/server/telecom/TelecomServiceImpl;)Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/MissedCallNotifier;->clearMissedCalls()V

    move-object v1, v2

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomServiceImpl;

    # getter for: Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomServiceImpl;->access$000(Lcom/android/server/telecom/TelecomServiceImpl;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->isTtySupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomServiceImpl;

    # getter for: Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomServiceImpl;->access$000(Lcom/android/server/telecom/TelecomServiceImpl;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getCurrentTtyMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
