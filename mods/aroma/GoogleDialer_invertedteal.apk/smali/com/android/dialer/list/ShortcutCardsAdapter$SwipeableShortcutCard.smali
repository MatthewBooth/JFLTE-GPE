.class Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;
.super Landroid/widget/FrameLayout;
.source "ShortcutCardsAdapter.java"

# interfaces
.implements Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/ShortcutCardsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeableShortcutCard"
.end annotation


# instance fields
.field private mClipRect:Landroid/graphics/Rect;

.field private mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

.field private mPreviousTranslationZ:F

.field private mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

.field final synthetic this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/dialer/list/ShortcutCardsAdapter;Landroid/content/Context;)V
    .locals 6
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mPreviousTranslationZ:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v5, v0

    new-instance v0, Lcom/android/dialer/list/SwipeHelper;

    const/4 v2, 0x0

    move-object v1, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/list/SwipeHelper;-><init>(Landroid/content/Context;ILcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;FF)V

    iput-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;Landroid/view/View;)V
    .locals 0
    .param p0    # Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;
    .param p1    # Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->prepareChildView(Landroid/view/View;)V

    return-void
.end method

.method private prepareChildView(Landroid/view/View;)V
    .locals 12
    .param p1    # Landroid/view/View;

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000

    const/4 v8, 0x0

    invoke-virtual {p1, v11}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v4, 0x7f0200e9

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogMarginHorizontal:I
    invoke-static {v4}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$600(Lcom/android/dialer/list/ShortcutCardsAdapter;)I

    move-result v4

    iget-object v5, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogMarginTop:I
    invoke-static {v5}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$700(Lcom/android/dialer/list/ShortcutCardsAdapter;)I

    move-result v5

    iget-object v6, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogMarginHorizontal:I
    invoke-static {v6}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$600(Lcom/android/dialer/list/ShortcutCardsAdapter;)I

    move-result v6

    iget-object v7, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogMarginBottom:I
    invoke-static {v7}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$800(Lcom/android/dialer/list/ShortcutCardsAdapter;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e0077

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogPaddingStart:I
    invoke-static {v4}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$900(Lcom/android/dialer/list/ShortcutCardsAdapter;)I

    move-result v4

    iget-object v5, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogPaddingTop:I
    invoke-static {v5}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$1000(Lcom/android/dialer/list/ShortcutCardsAdapter;)I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v6

    iget-object v7, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mCallLogPaddingBottom:I
    invoke-static {v7}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$1100(Lcom/android/dialer/list/ShortcutCardsAdapter;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    const v4, 0x7f0e0079

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080271

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mPreviousTranslationZ:F

    iget v4, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mPreviousTranslationZ:F

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationZ(F)V

    const v4, 0x7f0e0074

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual {v1, v8}, Lcom/android/dialer/calllog/CallLogListItemView;->setTranslationX(F)V

    invoke-virtual {v1, v8}, Lcom/android/dialer/calllog/CallLogListItemView;->setTranslationY(F)V

    invoke-virtual {v1, v9}, Lcom/android/dialer/calllog/CallLogListItemView;->setAlpha(F)V

    invoke-virtual {v1, v11}, Lcom/android/dialer/calllog/CallLogListItemView;->setClipBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, v1, v9}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->setChildrenOpacity(Landroid/view/ViewGroup;F)V

    const v4, 0x7f0e0076

    invoke-virtual {v1, v4}, Lcom/android/dialer/calllog/CallLogListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->this$0:Lcom/android/dialer/list/ShortcutCardsAdapter;

    # getter for: Lcom/android/dialer/list/ShortcutCardsAdapter;->mShortCardBackgroundColor:I
    invoke-static {v5}, Lcom/android/dialer/list/ShortcutCardsAdapter;->access$1200(Lcom/android/dialer/list/ShortcutCardsAdapter;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const v4, 0x7f0e007e

    invoke-virtual {v1, v4}, Lcom/android/dialer/calllog/CallLogListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setChildrenOpacity(Landroid/view/ViewGroup;F)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # F

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;

    const/4 v0, 0x1

    return v0
.end method

.method public clipCard(F)V
    .locals 8
    .param p1    # F

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    const v5, 0x3a83126f

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mPreviousTranslationZ:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationZ(F)V

    :cond_1
    :goto_1
    const v5, 0x3f666666

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->setVisibility(I)V

    :goto_2
    iget-object v5, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    move-object v2, v3

    check-cast v2, Landroid/view/ViewGroup;

    const/high16 v5, 0x3f800000

    const/high16 v6, 0x40a00000

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->setChildrenOpacity(Landroid/view/ViewGroup;F)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    iput v5, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mPreviousTranslationZ:F

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->setVisibility(I)V

    int-to-float v5, v0

    mul-float/2addr v5, p1

    float-to-int v1, v5

    iget-object v5, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v1, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;

    const v0, 0x7f0e0074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;->onSwipe(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScroll()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mSwipeHelper:Lcom/android/dialer/list/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnItemSwipeListener(Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;)V
    .locals 0
    .param p1    # Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    iput-object p1, p0, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->mOnItemSwipeListener:Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;

    return-void
.end method
