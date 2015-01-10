.class Lcom/android/systemui/statusbar/phone/ScrimController$5;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse out, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$200(Lcom/android/systemui/statusbar/phone/ScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$200(Lcom/android/systemui/statusbar/phone/ScrimController;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$400(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOutDuration()I

    move-result v1

    int-to-long v2, v1

    # setter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J
    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$302(Lcom/android/systemui/statusbar/phone/ScrimController;J)J

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J
    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$502(Lcom/android/systemui/statusbar/phone/ScrimController;J)J

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$602(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseOutFinished:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1200(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    # setter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$002(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$800(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/ScrimView;

    move-result-object v1

    const/high16 v2, 0x3f800000

    # invokes: Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$900(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;F)V

    goto :goto_0
.end method
