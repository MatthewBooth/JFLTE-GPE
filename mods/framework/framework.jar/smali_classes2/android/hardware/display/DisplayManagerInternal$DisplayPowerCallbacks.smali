.class public interface abstract Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DisplayPowerCallbacks"
.end annotation


# virtual methods
.method public abstract acquireSuspendBlocker()V
.end method

.method public abstract onDisplayStateChange(I)V
.end method

.method public abstract onProximityNegative()V
.end method

.method public abstract onProximityPositive()V
.end method

.method public abstract onStateChanged()V
.end method

.method public abstract releaseSuspendBlocker()V
.end method
