.class Landroid/hardware/camera2/utils/TaskDrainer$1;
.super Ljava/lang/Object;
.source "TaskDrainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/utils/TaskDrainer;->postDrained()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/utils/TaskDrainer;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/utils/TaskDrainer;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/utils/TaskDrainer$1;->this$0:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer$1;->this$0:Landroid/hardware/camera2/utils/TaskDrainer;

    # getter for: Landroid/hardware/camera2/utils/TaskDrainer;->VERBOSE:Z
    invoke-static {v0}, Landroid/hardware/camera2/utils/TaskDrainer;->access$000(Landroid/hardware/camera2/utils/TaskDrainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskDrainer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer$1;->this$0:Landroid/hardware/camera2/utils/TaskDrainer;

    # getter for: Landroid/hardware/camera2/utils/TaskDrainer;->mName:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/camera2/utils/TaskDrainer;->access$100(Landroid/hardware/camera2/utils/TaskDrainer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDrained"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer$1;->this$0:Landroid/hardware/camera2/utils/TaskDrainer;

    # getter for: Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    invoke-static {v0}, Landroid/hardware/camera2/utils/TaskDrainer;->access$200(Landroid/hardware/camera2/utils/TaskDrainer;)Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;->onDrained()V

    return-void
.end method
