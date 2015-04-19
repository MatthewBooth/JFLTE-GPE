.class public interface abstract Lcom/google/android/gms/games/multiplayer/realtime/Room;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;
.implements Lcom/google/android/gms/games/multiplayer/Participatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
        ">;",
        "Lcom/google/android/gms/games/multiplayer/Participatable;"
    }
.end annotation


# virtual methods
.method public abstract getAutoMatchCriteria()Landroid/os/Bundle;
.end method

.method public abstract getAutoMatchWaitEstimateSeconds()I
.end method

.method public abstract getCreationTimestamp()J
.end method

.method public abstract getCreatorId()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getRoomId()Ljava/lang/String;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getVariant()I
.end method
