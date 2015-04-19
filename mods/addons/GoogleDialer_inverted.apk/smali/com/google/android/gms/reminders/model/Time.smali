.class public interface abstract Lcom/google/android/gms/reminders/model/Time;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/reminders/model/Time$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/reminders/model/Time;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getHour()Ljava/lang/Integer;
.end method

.method public abstract getMinute()Ljava/lang/Integer;
.end method

.method public abstract getSecond()Ljava/lang/Integer;
.end method
