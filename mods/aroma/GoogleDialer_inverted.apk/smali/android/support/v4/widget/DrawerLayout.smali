.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field private static final LAYOUT_ATTRS:[I


# instance fields
.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mMinDrawerMargin:I

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    goto :goto_0
.end method

.method static synthetic access$100()[I
    .locals 1

    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2
    .param p0    # I

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "LEFT"

    :goto_0
    return-object v0

    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string v0, "RIGHT"

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .param p0    # Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2
    .param p0    # Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/ViewGroup$LayoutParams;

    if-gtz p2, :cond_0

    if-gez p2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    and-int v1, v0, p2

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    return-void
.end method

.method closeDrawers(Z)V
    .locals 9
    .param p1    # Z

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v6, 0x3

    invoke-virtual {p0, v0, v6}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    neg-int v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1

    :cond_2
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_2

    :cond_3
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v2, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v3, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v3, :cond_2

    iput-boolean v4, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v3, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_1
    const/4 v3, 0x4

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v2, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-nez v2, :cond_2

    iput-boolean v3, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v2, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # F

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 29
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/view/View;
    .param p3    # J

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v17

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    if-eqz v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v10

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    if-ge v0, v10, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {v25 .. v25}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v27

    move/from16 v0, v27

    if-le v0, v13, :cond_0

    move/from16 v13, v27

    goto :goto_1

    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    move/from16 v0, v26

    if-ge v0, v14, :cond_0

    move/from16 v14, v26

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v14, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_4
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v9, v2, 0x18

    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    shl-int/lit8 v2, v20, 0x18

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    return v22

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v16

    const/4 v2, 0x0

    int-to-float v3, v12

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v4, v12, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int v24, v2, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v16

    const/4 v2, 0x0

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 6
    .param p1    # I

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {p1, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v0, v5, 0x7

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v2

    and-int/lit8 v5, v2, 0x7

    if-ne v5, v0, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1    # Landroid/util/AttributeSet;

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x7

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v7, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    or-int v1, v7, v8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v7

    if-nez v7, :cond_1

    iget-boolean v7, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v7, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    return v5

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    iget v7, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v8, v3

    float-to-int v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/KeyEventCompat;->startTracking(Landroid/view/KeyEvent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    sub-int v17, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v6, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_2

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v20, v20, v21

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_4

    neg-int v0, v10

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v18, v19

    add-int v18, v10, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    :goto_2
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    cmpl-float v18, v14, v18

    if-eqz v18, :cond_5

    const/4 v4, 0x1

    :goto_3
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v18, v0

    and-int/lit8 v16, v18, 0x70

    sparse-switch v16, :sswitch_data_0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v19, v8, v10

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :goto_4
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    :cond_3
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_8

    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v15, :cond_0

    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    int-to-float v0, v10

    move/from16 v18, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v8, v17, v18

    sub-int v18, v17, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :sswitch_0
    sub-int v11, p5, p3

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    add-int v19, v8, v10

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :sswitch_1
    sub-int v11, p5, p3

    sub-int v18, v11, v7

    div-int/lit8 v9, v18, 0x2

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_7

    iget v9, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    :cond_6
    :goto_6
    add-int v18, v8, v10

    add-int v19, v9, v7

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_7
    add-int v18, v9, v7

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    sub-int v9, v18, v7

    goto :goto_6

    :cond_8
    const/4 v15, 0x4

    goto :goto_5

    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1    # I
    .param p2    # I

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    const/high16 v20, 0x40000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/high16 v20, 0x40000000

    move/from16 v0, v20

    if-eq v13, v0, :cond_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v20

    if-eqz v20, :cond_5

    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/high16 v18, 0x40000000

    :cond_1
    :goto_0
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v13, v0, :cond_4

    const/high16 v13, 0x40000000

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/4 v3, 0x1

    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v16

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v6, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_3
    if-nez v18, :cond_1

    const/high16 v18, 0x40000000

    const/16 v19, 0x12c

    goto :goto_0

    :cond_4
    if-nez v13, :cond_2

    const/high16 v13, 0x40000000

    const/16 v14, 0x12c

    goto :goto_1

    :cond_5
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v3, :cond_8

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_9

    sget-object v20, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v5, v1, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    const/high16 v21, 0x40000000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    sub-int v20, v14, v20

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    const/high16 v21, 0x40000000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v5, v9, v8}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_9
    sget-object v20, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v20

    and-int/lit8 v7, v20, 0x7

    and-int v20, v12, v7

    if-eqz v20, :cond_b

    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Child drawer has absolute gravity "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " but this "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "DrawerLayout"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " already has a "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "drawer view along that edge"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v5, v11, v10}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4

    :cond_c
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Child "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " at index "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_d
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1    # Landroid/os/Parcelable;

    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    :cond_0
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    new-instance v4, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v4, v5}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v6, :cond_0

    iget v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v6, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    :cond_2
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v6, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v6, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    return-object v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/MotionEvent;

    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v7, 0x1

    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v7

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v8, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    iput v9, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/4 v4, 0x1

    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float v1, v8, v10

    iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float v2, v9, v10

    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    mul-int v11, v5, v5

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    :cond_0
    :goto_1
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :pswitch_3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a sliding drawer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    const/high16 v2, 0x3f800000

    iput v2, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    iput-boolean v3, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_2
    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, p1, v4, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    const/4 v5, 0x3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {p2, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    if-ne v0, v5, :cond_3

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    if-ne v0, v5, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    :cond_1
    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # F

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/view/View;

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v2

    if-eq v0, v5, :cond_0

    if-ne v2, v5, :cond_3

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v4, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    :cond_1
    :goto_1
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v3, v4, :cond_2

    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v4, v3}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    :cond_2
    return-void

    :cond_3
    if-eq v0, v6, :cond_4

    if-ne v2, v6, :cond_5

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    iget v4, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v5, 0x3f800000

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1
.end method
