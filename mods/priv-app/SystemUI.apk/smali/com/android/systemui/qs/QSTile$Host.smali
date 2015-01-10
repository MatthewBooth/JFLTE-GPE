.class public interface abstract Lcom/android/systemui/qs/QSTile$Host;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTile$Host$Callback;
    }
.end annotation


# virtual methods
.method public abstract getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;
.end method

.method public abstract getCastController()Lcom/android/systemui/statusbar/policy/CastController;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getFlashlightController()Lcom/android/systemui/statusbar/policy/FlashlightController;
.end method

.method public abstract getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;
.end method

.method public abstract getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
.end method

.method public abstract getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;
.end method

.method public abstract getLooper()Landroid/os/Looper;
.end method

.method public abstract getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
.end method

.method public abstract getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;
.end method

.method public abstract startSettingsActivity(Landroid/content/Intent;)V
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
