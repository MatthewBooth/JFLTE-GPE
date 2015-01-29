.class public interface abstract Lcom/android/internal/os/IParcelFileDescriptorFactory;
.super Ljava/lang/Object;
.source "IParcelFileDescriptorFactory.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;
    }
.end annotation


# virtual methods
.method public abstract open(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
