.class public interface abstract Lcom/google/android/gms/reminders/model/Location;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/reminders/model/Location$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/reminders/model/Location;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDisplayAddress()Ljava/lang/String;
.end method

.method public abstract getLat()Ljava/lang/Double;
.end method

.method public abstract getLng()Ljava/lang/Double;
.end method

.method public abstract getLocationType()Ljava/lang/Integer;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRadiusMeters()Ljava/lang/Integer;
.end method
