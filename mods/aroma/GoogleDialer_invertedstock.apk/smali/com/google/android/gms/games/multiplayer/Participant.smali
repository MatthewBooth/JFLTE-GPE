.class public interface abstract Lcom/google/android/gms/games/multiplayer/Participant;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/games/multiplayer/Participant;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCapabilities()I
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getHiResImageUri()Landroid/net/Uri;
.end method

.method public abstract getHiResImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIconImageUri()Landroid/net/Uri;
.end method

.method public abstract getIconImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getParticipantId()Ljava/lang/String;
.end method

.method public abstract getPlayer()Lcom/google/android/gms/games/Player;
.end method

.method public abstract getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.end method

.method public abstract getStatus()I
.end method

.method public abstract isConnectedToRoom()Z
.end method

.method public abstract kt()Ljava/lang/String;
.end method
