.class public Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NavigationBarViewTaskSwitchHelper.java"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mIsRTL:Z

.field private mIsVertical:Z

.field private final mMinFlingVelocity:I

.field private final mScrollTouchSlop:I

.field private final mTaskSwitcherDetector:Landroid/view/GestureDetector;

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mMinFlingVelocity:I

    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/MotionEvent;
    .param p3    # F
    .param p4    # F

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    if-eqz v5, :cond_3

    cmpl-float v5, v1, v0

    if-lez v5, :cond_2

    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsRTL:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    if-eqz v5, :cond_5

    cmpg-float v5, p4, v6

    if-gez v5, :cond_0

    move v3, v4

    :cond_0
    :goto_1
    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->showNextAffiliatedTask()V

    :cond_1
    :goto_2
    return v4

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    cmpl-float v5, v0, v1

    if-lez v5, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    cmpg-float v5, p3, v6

    if-gez v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    if-eqz v5, :cond_8

    cmpg-float v5, p4, v6

    if-gez v5, :cond_7

    move v3, v4

    :cond_7
    :goto_3
    goto :goto_1

    :cond_8
    cmpl-float v5, p3, v6

    if-lez v5, :cond_7

    move v3, v4

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->showPreviousAffiliatedTask()V

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownY:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v3, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownX:I

    sub-int v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownY:I

    sub-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    if-nez v8, :cond_2

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    if-le v4, v8, :cond_1

    if-le v4, v6, :cond_1

    move v1, v7

    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    move v2, v7

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    if-le v6, v8, :cond_1

    if-le v6, v4, :cond_1

    move v1, v7

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-void
.end method

.method public setBarState(ZZ)V
    .locals 0
    .param p1    # Z
    .param p2    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsRTL:Z

    return-void
.end method
