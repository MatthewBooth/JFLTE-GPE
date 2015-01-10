.class public Lcom/android/systemui/statusbar/phone/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;
    }
.end annotation


# instance fields
.field private mBlockFlinging:Z

.field private mHandlingTouchEvent:Z

.field private mLastOverscrollAmount:I

.field private mLastX:F

.field private mLastY:F

.field private mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

.field private mTouchCancelled:Z

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    return-void
.end method

.method private getMaxScrollY()I
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v2, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    goto :goto_0
.end method

.method public fling(I)V
    .locals 1
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mBlockFlinging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    :cond_0
    return-void
.end method

.method public isHandlingTouchEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    return v0
.end method

.method public isScrolledToBottom()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getMaxScrollY()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;->onOverscrolled(FFI)V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    return v0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # Z

    const/4 v0, 0x0

    add-int v1, p4, p2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getMaxScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    invoke-super/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public setBlockFlinging(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mBlockFlinging:Z

    return-void
.end method

.method public setListener(Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    return-void
.end method
