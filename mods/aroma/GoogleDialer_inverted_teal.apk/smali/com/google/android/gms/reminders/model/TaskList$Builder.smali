.class public Lcom/google/android/gms/reminders/model/TaskList$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/TaskList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aCQ:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/TaskList;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/sr;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/TaskList$Builder;->aCQ:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/sr;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public setSystemListId(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/TaskList$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/TaskList$Builder;->aCQ:Ljava/lang/Integer;

    return-object p0
.end method
