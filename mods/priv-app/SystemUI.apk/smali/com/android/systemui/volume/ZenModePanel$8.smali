.class Lcom/android/systemui/volume/ZenModePanel$8;
.super Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$8;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionsChanged([Landroid/service/notification/Condition;)V
    .locals 2
    .param p1    # [Landroid/service/notification/Condition;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$8;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/ZenModePanel$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onExitConditionChanged(Landroid/service/notification/Condition;)V
    .locals 2
    .param p1    # Landroid/service/notification/Condition;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$8;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/ZenModePanel$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onZenChanged(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$8;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/ZenModePanel$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
