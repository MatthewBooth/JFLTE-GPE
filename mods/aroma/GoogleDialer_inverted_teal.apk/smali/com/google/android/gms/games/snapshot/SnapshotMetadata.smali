.class public interface abstract Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
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
        "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCoverImageAspectRatio()F
.end method

.method public abstract getCoverImageUri()Landroid/net/Uri;
.end method

.method public abstract getCoverImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getGame()Lcom/google/android/gms/games/Game;
.end method

.method public abstract getLastModifiedTimestamp()J
.end method

.method public abstract getOwner()Lcom/google/android/gms/games/Player;
.end method

.method public abstract getPlayedTime()J
.end method

.method public abstract getSnapshotId()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUniqueName()Ljava/lang/String;
.end method
