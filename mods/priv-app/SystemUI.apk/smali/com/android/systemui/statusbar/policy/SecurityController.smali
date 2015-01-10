.class public interface abstract Lcom/android/systemui/statusbar/policy/SecurityController;
.super Ljava/lang/Object;
.source "SecurityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
.end method

.method public abstract disconnectFromVpn()V
.end method

.method public abstract getDeviceOwnerName()Ljava/lang/String;
.end method

.method public abstract getLegacyVpnName()Ljava/lang/String;
.end method

.method public abstract getProfileOwnerName()Ljava/lang/String;
.end method

.method public abstract getVpnApp()Ljava/lang/String;
.end method

.method public abstract hasDeviceOwner()Z
.end method

.method public abstract hasProfileOwner()Z
.end method

.method public abstract isLegacyVpn()Z
.end method

.method public abstract isVpnEnabled()Z
.end method

.method public abstract onUserSwitched(I)V
.end method

.method public abstract removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
.end method
