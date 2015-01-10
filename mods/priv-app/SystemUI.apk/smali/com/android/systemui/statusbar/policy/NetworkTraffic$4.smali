.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$4;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShouldStart:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$2002(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShouldStart:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$2002(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    goto :goto_0
.end method
