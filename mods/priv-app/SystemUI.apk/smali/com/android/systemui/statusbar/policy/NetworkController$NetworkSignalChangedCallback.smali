.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkSignalChangedCallback"
.end annotation


# virtual methods
.method public abstract onAirplaneModeChanged(Z)V
.end method

.method public abstract onMobileDataEnabled(Z)V
.end method

.method public abstract onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public abstract onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V
.end method
