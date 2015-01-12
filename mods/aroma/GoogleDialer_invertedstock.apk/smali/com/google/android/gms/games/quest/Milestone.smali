.class public interface abstract Lcom/google/android/gms/games/quest/Milestone;
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
        "Lcom/google/android/gms/games/quest/Milestone;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCompletionRewardData()[B
.end method

.method public abstract getCurrentProgress()J
.end method

.method public abstract getEventId()Ljava/lang/String;
.end method

.method public abstract getMilestoneId()Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract getTargetProgress()J
.end method
