.class public interface abstract Lcom/google/android/gms/reminders/model/TaskId;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/reminders/model/TaskId$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/reminders/model/TaskId;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getClientAssignedId()Ljava/lang/String;
.end method

.method public abstract getClientAssignedThreadId()Ljava/lang/String;
.end method

.method public abstract getServerAssignedId()Ljava/lang/Long;
.end method
