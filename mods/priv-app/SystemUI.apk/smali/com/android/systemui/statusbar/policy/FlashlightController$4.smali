.class Lcom/android/systemui/statusbar/policy/FlashlightController$4;
.super Ljava/lang/Object;
.source "FlashlightController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$702(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->updateFlashlight(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$600(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$4;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchOff()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$200(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
