.class public interface abstract Lcom/android/internal/telephony/Connection$Listener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAudioQualityChanged(I)V
.end method

.method public abstract onLocalVideoCapabilityChanged(Z)V
.end method

.method public abstract onRemoteVideoCapabilityChanged(Z)V
.end method

.method public abstract onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V
.end method

.method public abstract onVideoStateChanged(I)V
.end method
