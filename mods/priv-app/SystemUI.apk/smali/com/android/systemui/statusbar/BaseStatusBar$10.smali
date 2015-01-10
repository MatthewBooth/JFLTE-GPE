.class Lcom/android/systemui/statusbar/BaseStatusBar$10;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;II)Z
    .locals 10
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    instance-of v5, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v5, :cond_0

    move v5, v8

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "StatusBar"

    const-string v9, "Trying to show notification guts, but not attached to window"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object v5, p1

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    invoke-static {v9, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$700(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    const v5, 0x7f0e00e8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationGuts;

    if-nez v1, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "StatusBar"

    const-string v9, "Trying to show notification guts, but already visible"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v5

    sub-int/2addr v5, p2

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v2, v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v5

    sub-int/2addr v5, p3

    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v6, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v4, v8

    const/4 v5, 0x0

    invoke-static {v1, p2, p3, v5, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v8, 0x190

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;
    invoke-static {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$800(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;
    invoke-static {v5, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$902(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v5, 0x1

    goto :goto_0
.end method
