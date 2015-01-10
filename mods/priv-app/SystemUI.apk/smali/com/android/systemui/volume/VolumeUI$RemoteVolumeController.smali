.class final Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;
.super Landroid/media/IRemoteVolumeController$Stub;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteVolumeController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Landroid/media/IRemoteVolumeController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/volume/VolumeUI;
    .param p2    # Lcom/android/systemui/volume/VolumeUI$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public remoteVolumeChanged(Landroid/media/session/ISessionController;I)V
    .locals 2
    .param p1    # Landroid/media/session/ISessionController;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/volume/VolumePanel;->postRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    return-void
.end method

.method public updateRemoteController(Landroid/media/session/ISessionController;)V
    .locals 2
    .param p1    # Landroid/media/session/ISessionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumePanel;->postRemoteSliderVisibility(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
