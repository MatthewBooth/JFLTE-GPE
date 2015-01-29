.class public interface abstract Lcom/android/internal/widget/ILockSettingsObserver;
.super Ljava/lang/Object;
.source "ILockSettingsObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettingsObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLockSettingChanged(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
