.class final Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformLongPressDelayed"
.end annotation


# instance fields
.field private mEvent:Landroid/view/MotionEvent;

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V
    .locals 0
    .param p1    # Lcom/android/server/accessibility/TouchExplorer;
    .param p2    # Lcom/android/server/accessibility/TouchExplorer$1;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)Z
    .locals 1
    .param p0    # Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPending()Z

    move-result v0

    return v0
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    return-void
.end method

.method private isPending()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->clear()V

    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 6

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)Z
    invoke-static {v3, v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I
    invoke-static {v3, v1}, Lcom/android/server/accessibility/TouchExplorer;->access$2102(Lcom/android/server/accessibility/TouchExplorer;I)I

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I
    invoke-static {v3, v4}, Lcom/android/server/accessibility/TouchExplorer;->access$2202(Lcom/android/server/accessibility/TouchExplorer;I)I

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I
    invoke-static {v3, v4}, Lcom/android/server/accessibility/TouchExplorer;->access$2302(Lcom/android/server/accessibility/TouchExplorer;I)I

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    invoke-static {v3, v4}, Lcom/android/server/accessibility/TouchExplorer;->access$2400(Lcom/android/server/accessibility/TouchExplorer;I)V

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    const/4 v4, 0x4

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I
    invoke-static {v3, v4}, Lcom/android/server/accessibility/TouchExplorer;->access$2502(Lcom/android/server/accessibility/TouchExplorer;I)I

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    invoke-static {v3, v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->access$2600(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V

    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->clear()V

    goto :goto_0
.end method
