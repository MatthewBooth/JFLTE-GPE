.class Lcom/android/server/am/ActivityManagerService$5;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 2
    .param p1    # Lcom/android/server/am/TaskRecord;
    .param p2    # Lcom/android/server/am/TaskRecord;

    iget v0, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/TaskRecord;

    check-cast p2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$5;->compare(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v0

    return v0
.end method
