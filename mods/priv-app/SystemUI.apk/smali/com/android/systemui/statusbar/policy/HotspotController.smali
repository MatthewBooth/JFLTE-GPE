.class public interface abstract Lcom/android/systemui/statusbar/policy/HotspotController;
.super Ljava/lang/Object;
.source "HotspotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
.end method

.method public abstract isHotspotEnabled()Z
.end method

.method public abstract isHotspotSupported()Z
.end method

.method public abstract isProvisioningNeeded()Z
.end method

.method public abstract removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
.end method

.method public abstract setHotspotEnabled(Z)V
.end method
