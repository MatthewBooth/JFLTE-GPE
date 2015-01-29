.class public interface abstract Lcom/android/internal/policy/IKeyguardExitCallback;
.super Ljava/lang/Object;
.source "IKeyguardExitCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardExitCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onKeyguardExitResult(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
