.class Lcom/android/systemui/doze/DozeService$2$1;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$PulseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeService$2;->onProximityResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/doze/DozeService$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$2$1;->this$1:Lcom/android/systemui/doze/DozeService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPulseFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2$1;->this$1:Lcom/android/systemui/doze/DozeService$2;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mPulsing:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$200(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2$1;->this$1:Lcom/android/systemui/doze/DozeService$2;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mDreaming:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$000(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2$1;->this$1:Lcom/android/systemui/doze/DozeService$2;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/doze/DozeService;->mPulsing:Z
    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeService;->access$202(Lcom/android/systemui/doze/DozeService;Z)Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2$1;->this$1:Lcom/android/systemui/doze/DozeService$2;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # invokes: Lcom/android/systemui/doze/DozeService;->turnDisplayOff()V
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$500(Lcom/android/systemui/doze/DozeService;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2$1;->this$1:Lcom/android/systemui/doze/DozeService$2;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$300(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public onPulseStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2$1;->this$1:Lcom/android/systemui/doze/DozeService$2;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mPulsing:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$200(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2$1;->this$1:Lcom/android/systemui/doze/DozeService$2;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mDreaming:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$000(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2$1;->this$1:Lcom/android/systemui/doze/DozeService$2;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # invokes: Lcom/android/systemui/doze/DozeService;->turnDisplayOn()V
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$400(Lcom/android/systemui/doze/DozeService;)V

    :cond_0
    return-void
.end method
