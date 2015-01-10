.class Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel$SafetyWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel$SafetyWarning;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;->this$0:Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/systemui/volume/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "Received ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;->this$0:Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;->this$0:Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    # invokes: Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->cleanUp()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->access$400(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)V

    :cond_1
    return-void
.end method
