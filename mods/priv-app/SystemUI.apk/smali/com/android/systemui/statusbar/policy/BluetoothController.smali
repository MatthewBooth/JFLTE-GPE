.class public interface abstract Lcom/android/systemui/statusbar/policy/BluetoothController;
.super Ljava/lang/Object;
.source "BluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;,
        Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
.end method

.method public abstract connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)V
.end method

.method public abstract disconnect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)V
.end method

.method public abstract getLastDeviceName()Ljava/lang/String;
.end method

.method public abstract getPairedDevices()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBluetoothConnected()Z
.end method

.method public abstract isBluetoothConnecting()Z
.end method

.method public abstract isBluetoothEnabled()Z
.end method

.method public abstract isBluetoothSupported()Z
.end method

.method public abstract removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
.end method

.method public abstract setBluetoothEnabled(Z)V
.end method
