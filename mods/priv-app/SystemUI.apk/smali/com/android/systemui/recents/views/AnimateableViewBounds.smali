.class public Lcom/android/systemui/recents/views/AnimateableViewBounds;
.super Landroid/view/ViewOutlineProvider;
.source "AnimateableViewBounds.java"


# instance fields
.field mAlpha:F

.field mClipBottomAnimator:Landroid/animation/ObjectAnimator;

.field mClipBounds:Landroid/graphics/Rect;

.field mClipRect:Landroid/graphics/Rect;

.field mClipRightAnimator:Landroid/animation/ObjectAnimator;

.field mClipTopAnimator:Landroid/animation/ObjectAnimator;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mCornerRadius:I

.field final mMinAlpha:F

.field mOutlineClipRect:Landroid/graphics/Rect;

.field mSourceView:Lcom/android/systemui/recents/views/TaskView;

.field mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;I)V
    .locals 1
    .param p1    # Lcom/android/systemui/recents/views/TaskView;
    .param p2    # I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mOutlineClipRect:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    const/high16 v0, 0x3e800000

    iput v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mMinAlpha:F

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-object p1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    iput p2, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mCornerRadius:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getClipTop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClipTop(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getClipRight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClipRight(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getClipBottom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClipBottom(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getOutlineClipBottom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setOutlineClipBottom(I)V

    return-void
.end method

.method private updateClipBounds()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method animateClipBottom(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBottomAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBottomAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBottomAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const-string v0, "clipBottom"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBottomAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBottomAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBottomAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBottomAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method animateClipRight(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRightAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRightAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRightAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const-string v0, "clipRight"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRightAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRightAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRightAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRightAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method animateClipTop(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipTopAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipTopAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipTopAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const-string v0, "clipTop"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipTopAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipTopAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipTopAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipTopAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipTopAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public getClipBottom()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getClipRight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getClipTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Outline;

    const/high16 v0, 0x3e800000

    iget v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    const/high16 v2, 0x3f400000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mOutlineClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mOutlineClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mOutlineClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v3, v0, v3

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mOutlineClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v4, v0, v4

    iget v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mCornerRadius:I

    int-to-float v5, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

.method public getOutlineClipBottom()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mOutlineClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method setAlpha(F)V
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public setClipBottom(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->updateClipBounds()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateVisibility(I)V

    :cond_0
    return-void
.end method

.method public setClipRight(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->updateClipBounds()V

    :cond_0
    return-void
.end method

.method public setClipTop(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->updateClipBounds()V

    :cond_0
    return-void
.end method

.method public setOutlineClipBottom(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mOutlineClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mOutlineClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    :cond_0
    return-void
.end method
