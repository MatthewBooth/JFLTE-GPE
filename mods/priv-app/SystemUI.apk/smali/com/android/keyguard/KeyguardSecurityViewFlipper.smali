.class public Lcom/android/keyguard/KeyguardSecurityViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "KeyguardSecurityViewFlipper.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    }
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private makeChildMeasureSpec(II)I
    .locals 3
    .param p1    # I
    .param p2    # I

    packed-switch p2, :pswitch_data_0

    const/high16 v0, 0x40000000

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    :pswitch_0
    const/high16 v0, -0x80000000

    move v1, p1

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x40000000

    move v1, p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1    # Landroid/util/AttributeSet;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1    # Landroid/util/AttributeSet;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .locals 2
    .param p1    # Landroid/util/AttributeSet;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideBouncer(I)V
    .locals 5
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v4, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/keyguard/KeyguardSecurityView;

    if-ne v3, v0, :cond_1

    move v4, p1

    :goto_1
    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public needsInput()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1    # I
    .param p2    # I

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    move/from16 v14, v18

    move v13, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v6

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v6, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_0

    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v14, :cond_0

    iget v14, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    :cond_0
    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v13, :cond_1

    iget v13, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingRight()I

    move-result v20

    add-int v15, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingBottom()I

    move-result v20

    add-int v7, v19, v20

    sub-int/2addr v14, v15

    sub-int/2addr v13, v7

    const/high16 v19, 0x40000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move/from16 v16, v18

    :goto_1
    const/high16 v19, 0x40000000

    move/from16 v0, v19

    if-ne v9, v0, :cond_4

    move v8, v10

    :goto_2
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v6, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v5

    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->height:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v20, v18, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v20, v10, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    add-int v19, v16, v15

    add-int v20, v8, v7

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v4}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    return v2
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1    # Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    :cond_0
    return-void
.end method

.method public showBouncer(I)V
    .locals 5
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v4, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/keyguard/KeyguardSecurityView;

    if-ne v3, v0, :cond_1

    move v4, p1

    :goto_1
    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardSecurityView;->showBouncer(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public showUsabilityHint()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->showUsabilityHint()V

    :cond_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
