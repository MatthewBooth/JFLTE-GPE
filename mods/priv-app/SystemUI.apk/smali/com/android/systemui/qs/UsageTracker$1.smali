.class Lcom/android/systemui/qs/UsageTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "UsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/UsageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/UsageTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/UsageTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/UsageTracker$1;->this$0:Lcom/android/systemui/qs/UsageTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/qs/UsageTracker$1;->this$0:Lcom/android/systemui/qs/UsageTracker;

    # getter for: Lcom/android/systemui/qs/UsageTracker;->mResetAction:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/qs/UsageTracker;->access$000(Lcom/android/systemui/qs/UsageTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/UsageTracker$1;->this$0:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0}, Lcom/android/systemui/qs/UsageTracker;->reset()V

    :cond_0
    return-void
.end method
