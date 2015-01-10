.class Lcom/android/systemui/volume/VolumeUI$1;
.super Ljava/lang/Object;
.source "VolumeUI.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeUI;->initPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    :cond_0
    return-void
.end method

.method public onVisible(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$400(Lcom/android/systemui/volume/VolumeUI;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$500(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$VolumeController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$400(Lcom/android/systemui/volume/VolumeUI;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeUI;->access$500(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$VolumeController;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    :cond_0
    return-void
.end method

.method public onZenSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$300(Lcom/android/systemui/volume/VolumeUI;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mStartZenSettings:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeUI;->access$200(Lcom/android/systemui/volume/VolumeUI;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$300(Lcom/android/systemui/volume/VolumeUI;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mStartZenSettings:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeUI;->access$200(Lcom/android/systemui/volume/VolumeUI;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
