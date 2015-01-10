.class public Lcom/android/systemui/recent/RecentsHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field private mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNumItemsInOneScreenful:I

.field private mOnScrollListener:Ljava/lang/Runnable;

.field private mRecycledViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recent/RecentsPanelView;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-static {p1, p2, p0, v2}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)I
    .locals 1
    .param p0    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .locals 0
    .param p0    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V

    return-void
.end method

.method private addToRecycledViews(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private scrollPositionOfMostRecent()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method private update()V
    .locals 15

    const/4 v2, 0x0

    :goto_0
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_0

    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v13, v11}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->recycleView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v2, 0x0

    :goto_1
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v13}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v13

    if-ge v2, v13, :cond_3

    const/4 v6, 0x0

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v14, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2, v6, v14}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v13, v12}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->addViewCallback(Landroid/view/View;)V

    :cond_2
    new-instance v5, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    new-instance v13, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;

    invoke-direct {v13, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    new-instance v3, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;

    invoke-direct {v3, p0, v12}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v8, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;

    invoke-direct {v4, p0, v12, v8}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;Landroid/view/View;)V

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v13, 0x7f0e012a

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v13, " "

    invoke-virtual {v0, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    new-instance v10, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;

    invoke-direct {v10, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;

    const/4 v0, 0x1

    return v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    return-void
.end method

.method public drawFadedEdges(Landroid/graphics/Canvas;IIII)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLeftFadingEdgeStrength()F

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getRightFadingEdgeStrength()F

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getPaddingTop()I

    move-result v12

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFFI)V

    :cond_0
    return-void
.end method

.method public findViewForTask(I)Landroid/view/View;
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;

    const v0, 0x7f0e0129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->getHorizontalFadingEdgeLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->getVerticalFadingEdgeLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isHardwareAccelerated()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->onAttachedToWindowCallback(Landroid/widget/LinearLayout;Z)V

    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    const v1, 0x7f0e0133

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setOverScrollEffectPadding(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    sget-boolean v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecentsPanelView"

    const-string v1, "onInterceptTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLastScrollPosition:I

    new-instance v1, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->dismissChild(Landroid/view/View;)V

    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 8
    .param p1    # Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    const/high16 v7, -0x80000000

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v6, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .param p1    # Lcom/android/systemui/recent/RecentsCallback;

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1    # Landroid/animation/LayoutTransition;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setMinSwipeProgress(F)V

    return-void
.end method

.method public setOnScrollListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Z
    .param p3    # F

    const/4 v0, 0x0

    return v0
.end method
