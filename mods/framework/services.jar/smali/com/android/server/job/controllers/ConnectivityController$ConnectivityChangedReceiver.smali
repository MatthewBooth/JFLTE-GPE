.class Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivityChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "networkType"

    const/4 v8, -0x1

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # setter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z
    invoke-static {v5, v7}, Lcom/android/server/job/controllers/ConnectivityController;->access$002(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # setter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z
    invoke-static {v5, v7}, Lcom/android/server/job/controllers/ConnectivityController;->access$102(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # invokes: Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(I)V
    invoke-static {v5, v4}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v3, :cond_0

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # setter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z
    invoke-static {v5, v7}, Lcom/android/server/job/controllers/ConnectivityController;->access$002(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    iget-object v8, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    :goto_1
    # setter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z
    invoke-static {v8, v5}, Lcom/android/server/job/controllers/ConnectivityController;->access$102(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # getter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z
    invoke-static {v5}, Lcom/android/server/job/controllers/ConnectivityController;->access$100(Lcom/android/server/job/controllers/ConnectivityController;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v8

    if-nez v8, :cond_4

    :goto_2
    # setter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z
    invoke-static {v5, v6}, Lcom/android/server/job/controllers/ConnectivityController;->access$002(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    :cond_2
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # invokes: Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(I)V
    invoke-static {v5, v4}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;I)V

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    :cond_4
    move v6, v7

    goto :goto_2
.end method
