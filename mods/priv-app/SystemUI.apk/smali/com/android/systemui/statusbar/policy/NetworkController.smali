.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;,
        Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;,
        Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    }
.end annotation


# virtual methods
.method public abstract addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V
.end method

.method public abstract addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
.end method

.method public abstract connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V
.end method

.method public abstract getDataUsageInfo()Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;
.end method

.method public abstract hasMobileDataFeature()Z
.end method

.method public abstract isMobileDataEnabled()Z
.end method

.method public abstract isMobileDataSupported()Z
.end method

.method public abstract removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V
.end method

.method public abstract removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
.end method

.method public abstract scanForAccessPoints()V
.end method

.method public abstract setMobileDataEnabled(Z)V
.end method

.method public abstract setWifiEnabled(Z)V
.end method
