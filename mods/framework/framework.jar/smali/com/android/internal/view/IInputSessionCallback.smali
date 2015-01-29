.class public interface abstract Lcom/android/internal/view/IInputSessionCallback;
.super Ljava/lang/Object;
.source "IInputSessionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputSessionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
