.class public Lcom/google/android/gms/reminders/model/TaskId$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/TaskId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aCN:Ljava/lang/Long;

.field private aCO:Ljava/lang/String;

.field private aCP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/TaskId;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/sp;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/TaskId$Builder;->aCN:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/TaskId$Builder;->aCO:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/TaskId$Builder;->aCP:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/sp;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setClientAssignedId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/TaskId$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/TaskId$Builder;->aCO:Ljava/lang/String;

    return-object p0
.end method

.method public setClientAssignedThreadId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/TaskId$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/TaskId$Builder;->aCP:Ljava/lang/String;

    return-object p0
.end method

.method public setServerAssignedId(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/TaskId$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/TaskId$Builder;->aCN:Ljava/lang/Long;

    return-object p0
.end method
