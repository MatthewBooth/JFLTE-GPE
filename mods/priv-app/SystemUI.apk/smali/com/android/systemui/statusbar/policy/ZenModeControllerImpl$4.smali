.class Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "ZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireNextAlarmChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    :cond_0
    const-string v0, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireEffectsSuppressorChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    :cond_1
    return-void
.end method
