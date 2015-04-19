.class public interface abstract Lcom/google/android/gms/games/internal/game/ExtendedGame;
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
        "Lcom/google/android/gms/games/internal/game/ExtendedGame;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getGame()Lcom/google/android/gms/games/Game;
.end method

.method public abstract ln()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/internal/game/GameBadge;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lo()I
.end method

.method public abstract lp()Z
.end method

.method public abstract lq()I
.end method

.method public abstract lr()J
.end method

.method public abstract ls()J
.end method

.method public abstract lt()Ljava/lang/String;
.end method

.method public abstract lu()J
.end method

.method public abstract lv()Ljava/lang/String;
.end method

.method public abstract lw()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
.end method
