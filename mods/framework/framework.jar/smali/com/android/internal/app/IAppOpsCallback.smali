.class public interface abstract Lcom/android/internal/app/IAppOpsCallback;
.super Ljava/lang/Object;
.source "IAppOpsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract opChanged(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
