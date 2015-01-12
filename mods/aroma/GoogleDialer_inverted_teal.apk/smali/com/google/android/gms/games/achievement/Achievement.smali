.class public interface abstract Lcom/google/android/gms/games/achievement/Achievement;
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
        "Lcom/google/android/gms/games/achievement/Achievement;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAchievementId()Ljava/lang/String;
.end method

.method public abstract getCurrentSteps()I
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getFormattedCurrentSteps()Ljava/lang/String;
.end method

.method public abstract getFormattedTotalSteps()Ljava/lang/String;
.end method

.method public abstract getLastUpdatedTimestamp()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPlayer()Lcom/google/android/gms/games/Player;
.end method

.method public abstract getRevealedImageUri()Landroid/net/Uri;
.end method

.method public abstract getRevealedImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract getTotalSteps()I
.end method

.method public abstract getType()I
.end method

.method public abstract getUnlockedImageUri()Landroid/net/Uri;
.end method

.method public abstract getUnlockedImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getXpValue()J
.end method
