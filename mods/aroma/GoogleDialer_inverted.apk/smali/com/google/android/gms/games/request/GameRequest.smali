.class public interface abstract Lcom/google/android/gms/games/request/GameRequest;
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
        "Lcom/google/android/gms/games/request/GameRequest;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCreationTimestamp()J
.end method

.method public abstract getData()[B
.end method

.method public abstract getExpirationTimestamp()J
.end method

.method public abstract getGame()Lcom/google/android/gms/games/Game;
.end method

.method public abstract getRecipientStatus(Ljava/lang/String;)I
.end method

.method public abstract getRecipients()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/Player;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public abstract getSender()Lcom/google/android/gms/games/Player;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getType()I
.end method
