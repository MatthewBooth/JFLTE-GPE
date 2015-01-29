.class Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;
.super Landroid/os/Handler;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/motion/MotionRecognitionManager;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;Landroid/hardware/motion/MotionRecognitionManager;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;->this$1:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    iput-object p3, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;->val$this$0:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    :try_start_0
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;->this$1:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    # getter for: Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Landroid/hardware/motion/MRListener;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->access$000(Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;)Landroid/hardware/motion/MRListener;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x35

    if-ne v2, v3, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/motion/MREvent;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;->this$1:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    # getter for: Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Landroid/hardware/motion/MRListener;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->access$000(Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;)Landroid/hardware/motion/MRListener;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/hardware/motion/MRListener;->onMotionListener(Landroid/hardware/motion/MREvent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassCastException in handleMessage: msg.obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
