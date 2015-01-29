.class public interface abstract Landroid/nfc/INfcUnlockHandler;
.super Ljava/lang/Object;
.source "INfcUnlockHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcUnlockHandler$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUnlockAttempted(Landroid/nfc/Tag;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
