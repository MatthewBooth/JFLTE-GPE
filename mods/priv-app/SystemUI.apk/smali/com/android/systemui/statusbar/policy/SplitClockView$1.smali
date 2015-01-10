.class Lcom/android/systemui/statusbar/policy/SplitClockView$1;
.super Landroid/content/BroadcastReceiver;
.source "SplitClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SplitClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SplitClockView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SplitClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView$1;->this$0:Lcom/android/systemui/statusbar/policy/SplitClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView$1;->this$0:Lcom/android/systemui/statusbar/policy/SplitClockView;

    # invokes: Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SplitClockView;->access$000(Lcom/android/systemui/statusbar/policy/SplitClockView;)V

    :cond_1
    return-void
.end method
