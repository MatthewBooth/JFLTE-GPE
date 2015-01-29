.class public Landroid/hardware/camera2/impl/CallbackProxies;
.super Ljava/lang/Object;
.source "CallbackProxies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;,
        Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;,
        Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
