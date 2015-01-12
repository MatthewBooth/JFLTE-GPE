.class public interface abstract Lcom/google/android/gms/games/Player;
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
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# virtual methods
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

.method public abstract getLastPlayedWithTimestamp()J
.end method

.method public abstract getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
.end method

.method public abstract getPlayerId()Ljava/lang/String;
.end method

.method public abstract getRetrievedTimestamp()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isProfileVisible()Z
.end method

.method public abstract kq()I
.end method

.method public abstract kr()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
.end method
