.class Lcom/android/systemui/volume/VolumePanel$5;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v3, 0x6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$5;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    :cond_1
    return-void
.end method
