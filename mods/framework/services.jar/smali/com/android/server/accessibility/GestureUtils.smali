.class final Lcom/android/server/accessibility/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D
    .locals 4
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method private static eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .locals 6
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0, p1, p4}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    move-result-wide v0

    int-to-double v4, p3

    cmpl-double v3, v0, v4

    if-gez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isDraggingGesture(FFFFFFFFF)Z
    .locals 14
    .param p0    # F
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # F

    sub-float v1, p4, p0

    sub-float v2, p5, p1

    const/4 v11, 0x0

    cmpl-float v11, v1, v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    return v11

    :cond_0
    mul-float v11, v1, v1

    mul-float v12, v2, v2

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_1

    div-float v4, v1, v3

    :goto_1
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_2

    div-float v5, v2, v3

    :goto_2
    sub-float v6, p6, p2

    sub-float v7, p7, p3

    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    cmpl-float v11, v7, v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_2

    :cond_3
    mul-float v11, v6, v6

    mul-float v12, v7, v7

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v8, v12

    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-lez v11, :cond_4

    div-float v9, v6, v8

    :goto_3
    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-lez v11, :cond_5

    div-float v10, v7, v8

    :goto_4
    mul-float v11, v4, v9

    mul-float v12, v5, v10

    add-float v0, v11, v12

    cmpg-float v11, v0, p8

    if-gez v11, :cond_6

    const/4 v11, 0x0

    goto :goto_0

    :cond_4
    move v9, v6

    goto :goto_3

    :cond_5
    move v10, v7

    goto :goto_4

    :cond_6
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public static isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .locals 1
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method public static isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .locals 1
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method public static isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 6
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
