.class public interface abstract Lcom/google/android/gms/reminders/model/DateTime;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/reminders/model/DateTime$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/reminders/model/DateTime;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAbsoluteTimeMs()Ljava/lang/Long;
.end method

.method public abstract getDay()Ljava/lang/Integer;
.end method

.method public abstract getMonth()Ljava/lang/Integer;
.end method

.method public abstract getPeriod()Ljava/lang/Integer;
.end method

.method public abstract getTime()Lcom/google/android/gms/reminders/model/Time;
.end method

.method public abstract getYear()Ljava/lang/Integer;
.end method
