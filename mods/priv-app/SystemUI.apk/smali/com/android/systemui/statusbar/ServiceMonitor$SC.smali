.class final Lcom/android/systemui/statusbar/ServiceMonitor$SC;
.super Ljava/lang/Object;
.source "ServiceMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ServiceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SC"
.end annotation


# instance fields
.field private mName:Landroid/content/ComponentName;

.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/systemui/statusbar/ServiceMonitor;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/ServiceMonitor;Lcom/android/systemui/statusbar/ServiceMonitor$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/ServiceMonitor;
    .param p2    # Lcom/android/systemui/statusbar/ServiceMonitor$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ServiceMonitor$SC;-><init>(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$600(Lcom/android/systemui/statusbar/ServiceMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$700(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$1100(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$1100(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$600(Lcom/android/systemui/statusbar/ServiceMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$700(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->mName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$700(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error linking to death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1    # Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$600(Lcom/android/systemui/statusbar/ServiceMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$700(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$600(Lcom/android/systemui/statusbar/ServiceMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$700(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  unlinked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$1100(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$1100(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/systemui/statusbar/ServiceMonitor$SC;->mName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
