.class Lcom/android/systemui/volume/VolumePanel$4;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenModePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->initZenModePanel()V
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

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpanded(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1000(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->access$1002(Lcom/android/systemui/volume/VolumePanel;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1100(Lcom/android/systemui/volume/VolumePanel;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)V

    goto :goto_0
.end method

.method public onInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)V

    return-void
.end method

.method public onMoreSettings()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$900(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$4;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$900(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onZenSettings()V

    :cond_0
    return-void
.end method
