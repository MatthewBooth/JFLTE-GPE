.class public Lcom/android/dialer/list/PhoneFavoriteListView;
.super Landroid/widget/GridView;
.source "PhoneFavoriteListView.java"

# interfaces
.implements Lcom/android/dialer/list/DragDropController$DragItemContainer;
.implements Lcom/android/dialer/list/OnDragDropListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final BOUND_GAP_RATIO:F

.field private final DRAG_SCROLL_PX_UNIT:I

.field private final DRAG_SHADOW_ALPHA:F

.field private final SCROLL_HANDLER_DELAY_MILLIS:J

.field private mAnimationDuration:I

.field private mBottomScrollBound:I

.field private mDragDropController:Lcom/android/dialer/list/DragDropController;

.field private final mDragScroller:Ljava/lang/Runnable;

.field private mDragShadowBitmap:Landroid/graphics/Bitmap;

.field private mDragShadowLeft:I

.field private final mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDragShadowOverlay:Landroid/widget/ImageView;

.field private mDragShadowParent:Landroid/view/View;

.field private mDragShadowTop:I

.field private mIsDragScrollerRunning:Z

.field private mLastDragY:I

.field final mLocationOnScreen:[I

.field private mScrollHandler:Landroid/os/Handler;

.field private mTopScrollBound:I

.field private mTouchDownForDragStartX:I

.field private mTouchDownForDragStartY:I

.field private mTouchOffsetToChildLeft:I

.field private mTouchOffsetToChildTop:I

.field private mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/list/PhoneFavoriteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/list/PhoneFavoriteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->SCROLL_HANDLER_DELAY_MILLIS:J

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->DRAG_SCROLL_PX_UNIT:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    new-instance v0, Lcom/android/dialer/list/DragDropController;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/DragDropController;-><init>(Lcom/android/dialer/list/DragDropController$DragItemContainer;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    const v0, 0x3f333333

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->DRAG_SHADOW_ALPHA:F

    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->BOUND_GAP_RATIO:F

    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteListView$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteListView$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteListView;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteListView$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteListView$2;-><init>(Lcom/android/dialer/list/PhoneFavoriteListView;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mAnimationDuration:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchSlop:F

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {v0, p0}, Lcom/android/dialer/list/DragDropController;->addOnDragDropListener(Lcom/android/dialer/list/OnDragDropListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/PhoneFavoriteListView;)I
    .locals 1
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteListView;

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLastDragY:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/PhoneFavoriteListView;)I
    .locals 1
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteListView;

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTopScrollBound:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/PhoneFavoriteListView;)I
    .locals 1
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteListView;

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mBottomScrollBound:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/dialer/list/PhoneFavoriteListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteListView;
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-object v0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/dialer/list/PhoneFavoriteListView;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Failed to copy bitmap from Drawing cache"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureScrollHandler()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private getViewAtPosition(II)Landroid/view/View;
    .locals 4
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getDragDropController()Lcom/android/dialer/list/DragDropController;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    return-object v0
.end method

.method public getViewForLocation(II)Lcom/android/dialer/list/PhoneFavoriteSquareTileView;
    .locals 5
    .param p1    # I
    .param p2    # I

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    invoke-virtual {p0, v3}, Lcom/android/dialer/list/PhoneFavoriteListView;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v1, p1, v3

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int v2, p2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/list/PhoneFavoriteListView;->getViewAtPosition(II)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/widget/GridView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchSlop:F

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 10
    .param p1    # Landroid/view/DragEvent;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v4, v5

    :cond_1
    :goto_1
    return v4

    :pswitch_0
    const-string v6, "PHONE_FAVORITE_TILE"

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {v6, v2, v3}, Lcom/android/dialer/list/DragDropController;->handleDragStarted(II)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :pswitch_1
    iput v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLastDragY:I

    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {v4, p0, v2, v3}, Lcom/android/dialer/list/DragDropController;->handleDragHovered(Landroid/view/View;II)V

    iget-boolean v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLastDragY:I

    iget v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchDownForDragStartY:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40800000

    iget v7, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchSlop:F

    mul-float/2addr v6, v7

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    iput-boolean v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->ensureScrollHandler()V

    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    const-wide/16 v8, 0x5

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3e4ccccd

    mul-float/2addr v4, v6

    float-to-int v1, v4

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getTop()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTopScrollBound:I

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getBottom()I

    move-result v4

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mBottomScrollBound:I

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->ensureScrollHandler()V

    iget-object v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    const/4 v6, 0x3

    if-eq v0, v6, :cond_2

    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    :cond_2
    iget-object v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {v6, v2, v3, v4}, Lcom/android/dialer/list/DragDropController;->handleDragFinished(IIZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDragFinished(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onDragHovered(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildLeft:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildTop:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    :cond_0
    return-void
.end method

.method public onDragStarted(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    invoke-direct {p0, p3}, Lcom/android/dialer/list/PhoneFavoriteListView;->createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    invoke-virtual {p3, v0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildLeft:I

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildTop:I

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    const v1, 0x3f333333

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0
.end method

.method public onDroppedOnRemove()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchDownForDragStartX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchDownForDragStartY:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDragShadowOverlay(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowParent:Landroid/view/View;

    return-void
.end method
