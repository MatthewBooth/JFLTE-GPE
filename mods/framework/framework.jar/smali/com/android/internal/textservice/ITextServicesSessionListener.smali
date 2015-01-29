.class public interface abstract Lcom/android/internal/textservice/ITextServicesSessionListener;
.super Ljava/lang/Object;
.source "ITextServicesSessionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
