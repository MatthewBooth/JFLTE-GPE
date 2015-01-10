.class final Lcom/android/systemui/media/NotificationPlayer$CmdThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CmdThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/NotificationPlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/NotificationPlayer;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/media/NotificationPlayer;->access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$500(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$500(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/systemui/media/NotificationPlayer$Command;

    move-object v2, v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v3, v2, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$500(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$500(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    const/4 v7, 0x0

    # setter for: Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;
    invoke-static {v3, v7}, Lcom/android/systemui/media/NotificationPlayer;->access$702(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$CmdThread;)Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # invokes: Lcom/android/systemui/media/NotificationPlayer;->releaseWakeLock()V
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$800(Lcom/android/systemui/media/NotificationPlayer;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # invokes: Lcom/android/systemui/media/NotificationPlayer;->startSound(Lcom/android/systemui/media/NotificationPlayer$Command;)V
    invoke-static {v3, v2}, Lcom/android/systemui/media/NotificationPlayer;->access$600(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$300(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    sub-long v4, v6, v8

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notification stop delayed by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "msecs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$300(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$300(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # setter for: Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3, v10}, Lcom/android/systemui/media/NotificationPlayer;->access$302(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$100(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$200(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$200(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    const/4 v7, 0x0

    # setter for: Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;
    invoke-static {v3, v7}, Lcom/android/systemui/media/NotificationPlayer;->access$202(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    :cond_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$000(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$000(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v6, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$000(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    # getter for: Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "STOP command without a player"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    :try_start_5
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
