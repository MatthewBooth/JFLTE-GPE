.class Lcom/android/systemui/statusbar/ServiceMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "ServiceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ServiceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ServiceMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$3;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$3;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$900(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$3;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$900(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$3;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$1100(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor$3;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    # getter for: Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/ServiceMonitor;->access$1100(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
