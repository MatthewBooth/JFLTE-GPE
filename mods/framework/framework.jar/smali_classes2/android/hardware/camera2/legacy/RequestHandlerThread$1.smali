.class Landroid/hardware/camera2/legacy/RequestHandlerThread$1;
.super Ljava/lang/Object;
.source "RequestHandlerThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestHandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestHandlerThread;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestHandlerThread;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;->this$0:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;->this$0:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    # getter for: Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->access$000(Landroid/hardware/camera2/legacy/RequestHandlerThread;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    const/4 v0, 0x0

    return v0
.end method
