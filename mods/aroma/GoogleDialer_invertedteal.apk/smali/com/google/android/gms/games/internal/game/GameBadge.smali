.class public interface abstract Lcom/google/android/gms/games/internal/game/GameBadge;
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
        "Lcom/google/android/gms/games/internal/game/GameBadge;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIconImageUri()Landroid/net/Uri;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method
