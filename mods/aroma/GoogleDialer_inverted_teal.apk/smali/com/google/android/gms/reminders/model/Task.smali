.class public interface abstract Lcom/google/android/gms/reminders/model/Task;
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
        "Lcom/google/android/gms/reminders/model/Task;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getArchived()Ljava/lang/Boolean;
.end method

.method public abstract getArchivedTimeMs()Ljava/lang/Long;
.end method

.method public abstract getCreatedTimeMillis()Ljava/lang/Long;
.end method

.method public abstract getDeleted()Ljava/lang/Boolean;
.end method

.method public abstract getDueDate()Lcom/google/android/gms/reminders/model/DateTime;
.end method

.method public abstract getEventDate()Lcom/google/android/gms/reminders/model/DateTime;
.end method

.method public abstract getLocation()Lcom/google/android/gms/reminders/model/Location;
.end method

.method public abstract getLocationSnoozedUntilMs()Ljava/lang/Long;
.end method

.method public abstract getPinned()Ljava/lang/Boolean;
.end method

.method public abstract getSnoozed()Ljava/lang/Boolean;
.end method

.method public abstract getSnoozedTimeMillis()Ljava/lang/Long;
.end method

.method public abstract getTaskId()Lcom/google/android/gms/reminders/model/TaskId;
.end method

.method public abstract getTaskList()Lcom/google/android/gms/reminders/model/TaskList;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
