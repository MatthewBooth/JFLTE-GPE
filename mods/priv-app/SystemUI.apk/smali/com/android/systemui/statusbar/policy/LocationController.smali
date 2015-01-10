.class public interface abstract Lcom/android/systemui/statusbar/policy/LocationController;
.super Ljava/lang/Object;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
.end method

.method public abstract isLocationEnabled()Z
.end method

.method public abstract removeSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
.end method

.method public abstract setLocationEnabled(Z)Z
.end method
