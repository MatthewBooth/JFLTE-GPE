.class Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;
.super Ljava/lang/Thread;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field private volatile mDone:Z

.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    const-string v0, "CallLogAdapter.QueryThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->mDone:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->mDone:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/dialer/calllog/CallLogAdapter;->access$300(Lcom/android/dialer/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/dialer/calllog/CallLogAdapter;->access$300(Lcom/android/dialer/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/dialer/calllog/CallLogAdapter;->access$300(Lcom/android/dialer/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;

    move-object v3, v0

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v5, v3, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    # invokes: Lcom/android/dialer/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    invoke-static {v4, v5, v6, v7}, Lcom/android/dialer/calllog/CallLogAdapter;->access$400(Lcom/android/dialer/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_2
    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/dialer/calllog/CallLogAdapter;->access$500(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/dialer/calllog/CallLogAdapter;->access$300(Lcom/android/dialer/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/dialer/calllog/CallLogAdapter;->access$300(Lcom/android/dialer/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public stopProcessing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->mDone:Z

    return-void
.end method
