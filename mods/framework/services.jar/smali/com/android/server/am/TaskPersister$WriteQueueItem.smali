.class Lcom/android/server/am/TaskPersister$WriteQueueItem;
.super Ljava/lang/Object;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteQueueItem"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/TaskPersister$1;)V
    .locals 0
    .param p1    # Lcom/android/server/am/TaskPersister$1;

    invoke-direct {p0}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>()V

    return-void
.end method
