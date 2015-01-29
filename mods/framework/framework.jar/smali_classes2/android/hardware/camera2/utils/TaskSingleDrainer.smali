.class public Landroid/hardware/camera2/utils/TaskSingleDrainer;
.super Ljava/lang/Object;
.source "TaskSingleDrainer.java"


# instance fields
.field private final mSingleTask:Ljava/lang/Object;

.field private final mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TaskDrainer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
    .param p2    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    new-instance v0, Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
    .param p2    # Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    new-instance v0, Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    return-void
.end method


# virtual methods
.method public beginDrain()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskDrainer;->beginDrain()V

    return-void
.end method

.method public taskFinished()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskFinished(Ljava/lang/Object;)V

    return-void
.end method

.method public taskStarted()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mTaskDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskSingleDrainer;->mSingleTask:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskStarted(Ljava/lang/Object;)V

    return-void
.end method
