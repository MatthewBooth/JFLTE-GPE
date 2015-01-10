.class interface abstract Lcom/android/server/tv/TvInputHardwareManager$Listener;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V
.end method

.method public abstract onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
.end method

.method public abstract onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
.end method

.method public abstract onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
.end method

.method public abstract onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
.end method

.method public abstract onStateChanged(Ljava/lang/String;I)V
.end method
