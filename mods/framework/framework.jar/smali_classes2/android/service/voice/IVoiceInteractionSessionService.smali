.class public interface abstract Landroid/service/voice/IVoiceInteractionSessionService;
.super Ljava/lang/Object;
.source "IVoiceInteractionSessionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVoiceInteractionSessionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract newSession(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
