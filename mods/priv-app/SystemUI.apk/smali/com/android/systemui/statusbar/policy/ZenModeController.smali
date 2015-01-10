.class public interface abstract Lcom/android/systemui/statusbar/policy/ZenModeController;
.super Ljava/lang/Object;
.source "ZenModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
.end method

.method public abstract getEffectsSuppressor()Landroid/content/ComponentName;
.end method

.method public abstract getExitCondition()Landroid/service/notification/Condition;
.end method

.method public abstract getZen()I
.end method

.method public abstract isZenAvailable()Z
.end method

.method public abstract requestConditions(Z)V
.end method

.method public abstract setExitCondition(Landroid/service/notification/Condition;)V
.end method

.method public abstract setUserId(I)V
.end method

.method public abstract setZen(I)V
.end method
