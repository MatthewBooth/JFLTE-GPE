.class public interface abstract Lcom/android/internal/policy/IKeyguardShowCallback;
.super Ljava/lang/Object;
.source "IKeyguardShowCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardShowCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onShown(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
