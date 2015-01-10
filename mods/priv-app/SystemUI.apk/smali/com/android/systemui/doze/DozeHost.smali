.class public interface abstract Lcom/android/systemui/doze/DozeHost;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeHost$PulseCallback;,
        Lcom/android/systemui/doze/DozeHost$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
.end method

.method public abstract isPowerSaveActive()Z
.end method

.method public abstract pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;)V
.end method

.method public abstract removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
.end method

.method public abstract startDozing(Ljava/lang/Runnable;)V
.end method

.method public abstract stopDozing()V
.end method
