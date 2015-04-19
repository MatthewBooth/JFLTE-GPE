.class public Lcom/android/contacts/widget/MultiShrinkScroller;
.super Landroid/widget/FrameLayout;
.source "MultiShrinkScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;,
        Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    }
.end annotation


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mActionBarGradientView:Landroid/view/View;

.field private final mActionBarSize:I

.field private final mAlphaMatrixValues:[F

.field private mCollapsedTitleBottomMargin:I

.field private mCollapsedTitleStartMargin:I

.field private final mColorMatrix:Landroid/graphics/ColorMatrix;

.field private final mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private final mGradientColors:[I

.field private mHasEverTouchedTheTop:Z

.field private mHeaderTintColor:I

.field private mIntermediateHeaderHeight:I

.field private mInvisiblePlaceholderTextView:Landroid/widget/TextView;

.field private mIsBeingDragged:Z

.field private mIsOpenContactSquare:Z

.field private final mIsTwoPanel:Z

.field private mLargeTextView:Landroid/widget/TextView;

.field private mLastEventPosition:[F

.field private mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

.field private mMaximumHeaderHeight:I

.field private mMaximumHeaderTextSize:I

.field private mMaximumPortraitHeaderHeight:I

.field private final mMaximumTitleMargin:I

.field private final mMaximumVelocity:I

.field private mMinimumHeaderHeight:I

.field private mMinimumPortraitHeaderHeight:I

.field private final mMinimumVelocity:I

.field private final mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

.field private final mMultiplyBlendMatrixValues:[F

.field private mPhotoTouchInterceptOverlay:Landroid/view/View;

.field private mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

.field private mPhotoViewContainer:Landroid/view/View;

.field private mReceivedDown:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mScrollViewChild:Landroid/view/View;

.field private final mScroller:Landroid/widget/Scroller;

.field private final mSnapToBottomListener:Landroid/animation/Animator$AnimatorListener;

.field private mStartColumn:Landroid/view/View;

.field private final mTextSizePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTitleGradientView:Landroid/view/View;

.field private mToolbar:Landroid/view/View;

.field private final mToolbarElevation:F

.field private final mTouchSlop:I

.field private final mTransparentStartHeight:I

.field private mTransparentView:Landroid/view/View;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mWhiteBlendingPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/widget/MultiShrinkScroller$2;

    invoke-direct {v0}, Lcom/android/contacts/widget/MultiShrinkScroller$2;-><init>()V

    sput-object v0, Lcom/android/contacts/widget/MultiShrinkScroller;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000

    const v6, 0x3ecccccd

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-array v2, v9, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    iput-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    iput-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e23d70a

    const v4, 0x3e4ccccd

    invoke-direct {v2, v3, v6, v4, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTextSizePathInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f666666

    const v4, 0x3f4ccccd

    invoke-direct {v2, v7, v6, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhiteBlendingPathInterpolator:Landroid/view/animation/PathInterpolator;

    new-array v2, v9, [I

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mGradientColors:[I

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mGradientColors:[I

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mGradientColors:[I

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    new-instance v2, Lcom/android/contacts/widget/MultiShrinkScroller$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$1;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mSnapToBottomListener:Landroid/animation/Animator$AnimatorListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->setFocusable(Z)V

    invoke-virtual {p0, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->setWillNotDraw(Z)V

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/android/contacts/widget/MultiShrinkScroller;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumVelocity:I

    const/high16 v2, 0x44fa0000

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumVelocity:I

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarElevation:F

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    new-array v2, v8, [I

    const v3, 0x10102eb

    aput v3, v2, v5

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarSize:I

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarSize:I

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    iput v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumPortraitHeaderHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x56000000
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 1
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    .locals 1
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/widget/MultiShrinkScroller;Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    .locals 0
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;
    .param p1    # Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 1
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->calculateCollapsedLargeTitlePadding()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->configureGradientViewHeights()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->expandHeader()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/widget/MultiShrinkScroller;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 1
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIntermediateHeaderHeight:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPortraitHeaderHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/widget/MultiShrinkScroller;)I
    .locals 1
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/android/contacts/widget/MultiShrinkScroller;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/widget/MultiShrinkScroller;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    return p1
.end method

.method private alphaMatrix(FI)Landroid/graphics/ColorMatrix;
    .locals 5
    .param p1    # F
    .param p2    # I

    const/high16 v4, 0x3f800000

    const/high16 v3, 0x437f0000

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    const/4 v1, 0x6

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    const/16 v1, 0xc

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    const/4 v1, 0x4

    sub-float v2, v4, p1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    const/16 v1, 0x9

    sub-float v2, v4, p1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    const/16 v1, 0xe

    sub-float v2, v4, p1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mAlphaMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhitenessColorMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method private calculateCollapsedLargeTitlePadding()V
    .locals 5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mInvisiblePlaceholderTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleStartMargin:I

    :goto_0
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v4

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iput v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleBottomMargin:I

    return-void

    :cond_0
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleStartMargin:I

    goto :goto_0
.end method

.method private calculateHeightRatio(I)F
    .locals 3
    .param p1    # I

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumPortraitHeaderHeight:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPortraitHeaderHeight:I

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumPortraitHeaderHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private configureGradientViewHeights()V
    .locals 7

    const/high16 v6, 0x3fa00000

    const/high16 v0, 0x3fa00000

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private expandHeader()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeaderHeight()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    if-eq v1, v2, :cond_0

    const-string v1, "headerHeight"

    new-array v2, v4, [I

    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    aput v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    const-string v2, "scrollY"

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    neg-int v4, v4

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private fling(F)V
    .locals 9
    .param p1    # F

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumVelocity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float p1, v0, v2

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v2

    float-to-int v4, p1

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->invalidate()V

    return-void
.end method

.method private getCurrentVelocity()F
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getFullyCompressedHeaderHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getOverflowingChildViewSize()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getMaximumScrollUpwards()I
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getMaximumScrollableHeaderHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsOpenContactSquare:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIntermediateHeaderHeight:I

    goto :goto_0
.end method

.method private getOverflowingChildViewSize()I
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getScrollUntilOffBottom()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll_ignoreOversizedHeaderForSnapping()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScroll_ignoreOversizedHeaderForSnapping()I
    .locals 3

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTransparentHeightRatio(I)F
    .locals 4
    .param p1    # I

    const/high16 v3, 0x3f800000

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v1, v3, v1

    return v1
.end method

.method private getTransparentViewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method private motionShouldStartDrag(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    aget v7, v7, v4

    sub-float v0, v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    aget v7, v7, v5

    sub-float v1, v6, v7

    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_2

    :cond_0
    move v2, v5

    :goto_0
    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gtz v6, :cond_1

    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTouchSlop:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_3

    :cond_1
    move v3, v5

    :goto_1
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    :goto_2
    return v5

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_2
.end method

.method private multiplyBlend(IF)F
    .locals 2
    .param p1    # I
    .param p2    # F

    int-to-float v0, p1

    mul-float/2addr v0, p2

    const/high16 v1, 0x437f0000

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000

    sub-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private multiplyBlendMatrix(IF)Landroid/graphics/ColorMatrix;
    .locals 3
    .param p1    # I
    .param p2    # F

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlend(IF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    const/4 v1, 0x6

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlend(IF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    const/16 v1, 0xc

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlend(IF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMultiplyBlendMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method private onDragFinished(I)V
    .locals 1
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->snapToTop(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->snapToBottom(I)V

    :cond_0
    return-void
.end method

.method private scrollDown(I)V
    .locals 4
    .param p1    # I

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr p1, v2

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v2, v0, v2

    sub-int/2addr p1, v2

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTransparentViewHeight(I)V

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result v2

    if-gtz v2, :cond_2

    new-instance v2, Lcom/android/contacts/widget/MultiShrinkScroller$8;

    invoke-direct {v2, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$8;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private scrollUp(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTransparentViewHeight(I)V

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTransparentViewHeight(I)V

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v2

    sub-int v2, v0, v2

    sub-int/2addr p1, v2

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getFullyCompressedHeaderHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v2, v0, v2

    sub-int/2addr p1, v2

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    return-void
.end method

.method private setInterpolatedTitleMargins(F)V
    .locals 8
    .param p1    # F

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    if-nez v5, :cond_0

    move v1, v4

    :goto_0
    iget v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleStartMargin:I

    int-to-float v5, v5

    sub-float v6, v7, p1

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mCollapsedTitleBottomMargin:I

    int-to-float v5, v5

    sub-float v6, v7, p1

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    float-to-int v0, v5

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v5

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method private setTransparentViewHeight(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private shouldStartDrag(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateLastEventPosition(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->startDrag()V

    move v0, v1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->motionShouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateLastEventPosition(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->startDrag()V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private smoothScrollBy(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smooth scrolling by delta=0 is pointless and harmful"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->invalidate()V

    return-void
.end method

.method private snapToBottom(I)V
    .locals 5
    .param p1    # I

    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    add-int/2addr v3, v4

    sub-int/2addr v3, p1

    int-to-float v2, v3

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIntermediateHeaderHeight:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v3

    neg-int v3, v3

    sub-int/2addr v3, p1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    goto :goto_1
.end method

.method private snapToTop(I)Z
    .locals 5
    .param p1    # I

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll_ignoreOversizedHeaderForSnapping()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    add-int v0, v3, v4

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll_ignoreOversizedHeaderForSnapping()I

    move-result v3

    neg-int v3, v3

    sub-int/2addr v3, p1

    if-gez v3, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll_ignoreOversizedHeaderForSnapping()I

    move-result v3

    neg-int v3, v3

    sub-int/2addr v3, p1

    iget v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    neg-int v4, v4

    if-le v3, v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->smoothScrollBy(I)V

    move v1, v2

    goto :goto_0
.end method

.method private startDrag()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method private stopDrag(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getCurrentVelocity()F

    move-result v0

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumVelocity:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumVelocity:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    :cond_0
    neg-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->fling(F)V

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->onDragFinished(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    return-void

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->onDragFinished(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->onDragFinished(I)V

    goto :goto_0
.end method

.method private updateHeaderTextSizeAndMargin()V
    .locals 9

    const/high16 v8, 0x3f800000

    iget-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPivotX(F)V

    :goto_1
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    iget v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    iget v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    if-lt v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setScaleY(F)V

    invoke-direct {p0, v8}, Lcom/android/contacts/widget/MultiShrinkScroller;->setInterpolatedTitleMargins(F)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPivotX(F)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    iget v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I

    iget v7, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v2, v5, v6

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mInvisiblePlaceholderTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    int-to-float v1, v5

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTextSizePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    iget v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v5, v1

    iget v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I

    int-to-float v6, v6

    div-float v3, v5, v6

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setScaleY(F)V

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->setInterpolatedTitleMargins(F)V

    goto/16 :goto_0
.end method

.method private updateLastEventPosition(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v0, v1

    return-void
.end method

.method private updatePhotoTintAndDropShadow()V
    .locals 22

    const-string v14, "updatePhotoTintAndDropShadow"

    invoke-static {v14}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v14}, Lcom/android/contacts/widget/QuickContactImageView;->isBasedOffLetterTile()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v15, 0xff

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v15, 0xff

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I

    if-gt v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbarElevation:F

    invoke-virtual {v14, v15}, Landroid/view/View;->setElevation(F)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v14}, Lcom/android/contacts/widget/QuickContactImageView;->clearColorFilter()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPortraitHeaderHeight:I

    int-to-float v14, v14

    const/high16 v15, 0x3f000000

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/widget/MultiShrinkScroller;->calculateHeightRatio(I)F

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/widget/MultiShrinkScroller;->calculateHeightRatio(I)F

    move-result v10

    :goto_2
    const/high16 v14, 0x3f800000

    const/high16 v15, 0x3f800000

    sub-float/2addr v15, v10

    div-float/2addr v15, v7

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const v3, 0x3f8ccccd

    float-to-double v14, v8

    const-wide v16, 0x3ff19999a0000000L

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v11, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v14}, Landroid/graphics/ColorMatrix;->reset()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v14, v11}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v15, 0x3f800000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mWhiteBlendingPathInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000

    sub-float v17, v17, v10

    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v16

    sub-float v15, v15, v16

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->alphaMatrix(FI)Landroid/graphics/ColorMatrix;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v14}, Lcom/android/contacts/widget/QuickContactImageView;->isBasedOffLetterTile()Z

    move-result v14

    if-eqz v14, :cond_3

    const v2, 0x3f666666

    const/high16 v4, 0x3fc00000

    const/high16 v14, 0x3f800000

    sub-float/2addr v14, v7

    div-float/2addr v14, v7

    float-to-double v14, v14

    const-wide/high16 v16, 0x3ff0000000000000L

    const-wide v18, 0x3fb9999a00000000L

    const-wide v20, 0x3fe5555560000000L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    sub-double v16, v16, v18

    div-double v14, v14, v16

    double-to-float v12, v14

    const/high16 v14, 0x3f800000

    const/high16 v15, 0x3f800000

    sub-float/2addr v15, v10

    div-float/2addr v15, v7

    div-float/2addr v15, v12

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v14, 0x3f800000

    float-to-double v0, v9

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff8000000000000L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    sub-float v5, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHeaderTintColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/android/contacts/widget/MultiShrinkScroller;->alphaMatrix(FI)Landroid/graphics/ColorMatrix;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    new-instance v15, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v14, v15}, Lcom/android/contacts/widget/QuickContactImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHeaderTintColor:I

    invoke-virtual {v14, v15}, Lcom/android/contacts/widget/QuickContactImageView;->setTint(I)V

    const/high16 v14, 0x437f0000

    mul-float/2addr v14, v8

    float-to-int v6, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v14, v6}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v14, v6}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setElevation(F)V

    goto/16 :goto_1

    :cond_2
    move v10, v7

    goto/16 :goto_2

    :cond_3
    const/high16 v14, 0x3f800000

    sub-float v5, v14, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mColorMatrix:Landroid/graphics/ColorMatrix;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHeaderTintColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->multiplyBlendMatrix(IF)Landroid/graphics/ColorMatrix;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_3
.end method

.method private updatePositionAndComputeDelta(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    aget v1, v2, v3

    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateLastEventPosition(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLastEventPosition:[F

    aget v2, v2, v3

    sub-float v2, v1, v2

    return v2
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollTo(II)V

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v0, v3, v2

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v4

    sub-int v1, v3, v4

    if-le v0, v1, :cond_0

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->postInvalidateOnAnimation()V

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v0

    neg-int v3, v2

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43340000

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->postInvalidateOnAnimation()V

    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v2, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method public getHeaderHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getScroll()I
    .locals 2

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getScrollNeededToBeFullScreen()I
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v0

    return v0
.end method

.method public getStartingTransparentHeightRatio()F
    .locals 1

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentStartHeight:I

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentHeightRatio(I)F

    move-result v0

    return v0
.end method

.method public getToolbarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;Z)V
    .locals 2
    .param p1    # Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    .param p2    # Z

    const v1, 0x7f0e00bc

    const v0, 0x7f0e00c8

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    const v0, 0x7f0e00c9

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollViewChild:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;

    const v0, 0x7f0e00c5

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTransparentView:Landroid/view/View;

    const v0, 0x7f0e00d3

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mInvisiblePlaceholderTextView:Landroid/widget/TextView;

    const v0, 0x7f0e00c6

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mStartColumn:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/widget/MultiShrinkScroller$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$3;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00c7

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/widget/MultiShrinkScroller$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$4;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    iput-boolean p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsOpenContactSquare:Z

    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/QuickContactImageView;

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    const v0, 0x7f0e00d1

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e00d2

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e00d0

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/widget/MultiShrinkScroller$5;

    invoke-direct {v1, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$5;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v0, 0x0

    new-instance v1, Lcom/android/contacts/widget/MultiShrinkScroller$6;

    invoke-direct {v1, p0}, Lcom/android/contacts/widget/MultiShrinkScroller$6;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    invoke-static {p0, v0, v1}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->shouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/MotionEvent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    if-nez v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->shouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    if-ne v0, v4, :cond_1

    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    if-eqz v3, :cond_1

    iput-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->performClick()Z

    move-result v4

    goto :goto_0

    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/contacts/widget/MultiShrinkScroller;->stopDrag(Z)V

    iput-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePositionAndComputeDelta(Landroid/view/MotionEvent;)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v3

    float-to-int v6, v1

    add-int/2addr v3, v6

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollTo(II)V

    iput-boolean v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mReceivedDown:Z

    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollUpwards()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v5

    sub-int v2, v3, v5

    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    const/high16 v6, 0x3f800000

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepareForExpandingScrollChild()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->suppressLayout(Z)V

    return-void
.end method

.method public prepareForShrinkingScrollChild(I)V
    .locals 6
    .param p1    # I

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->suppressLayout(Z)V

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getOverflowingChildViewSize()I

    move-result v2

    neg-int v2, v2

    add-int v1, v2, p1

    if-lez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getToolbarHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-string v2, "toolbarHeight"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public scrollOffBottom()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;

    const/16 v2, 0x12c

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getCurrentVelocity()F

    move-result v3

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;-><init>(IFI)V

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    const-string v2, "scroll"

    new-array v3, v5, [I

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v4

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mSnapToBottomListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    invoke-interface {v2}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onStartScrollOffBottom()V

    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v4

    sub-int v0, p2, v4

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollNeededToBeFullScreen()I

    move-result v4

    if-gtz v4, :cond_3

    move v2, v1

    :goto_0
    if-lez v0, :cond_4

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollUp(I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollNeededToBeFullScreen()I

    move-result v4

    if-gtz v4, :cond_5

    :goto_2
    iget-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    or-int/2addr v3, v1

    iput-boolean v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHasEverTouchedTheTop:Z

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    invoke-interface {v3}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onExitFullscreen()V

    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentHeightRatio(I)F

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onTransparentViewHeightChange(F)V

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollDown(I)V

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    invoke-interface {v3}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onEnterFullscreen()V

    goto :goto_3
.end method

.method public scrollUpForEntranceAnimation(Z)V
    .locals 8
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScroll()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v5

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v5, v2, v5

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10c000e

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    if-eqz p1, :cond_0

    move v5, v2

    :goto_0
    add-int v3, v2, v5

    const-string v5, "scroll"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v7, 0x1

    aput v3, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/contacts/widget/MultiShrinkScroller$7;

    invoke-direct {v5, p0, v3}, Lcom/android/contacts/widget/MultiShrinkScroller$7;-><init>(Lcom/android/contacts/widget/MultiShrinkScroller;I)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->getTransparentViewHeight()I

    move-result v5

    goto :goto_0
.end method

.method public setHeaderHeight(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    return-void
.end method

.method public setHeaderTintColor(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    iput p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mHeaderTintColor:I

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v2, 0xffffff

    and-int/2addr v2, p1

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EdgeEffect;->setColor(I)V

    return-void
.end method

.method public setScroll(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollTo(II)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoTouchInterceptOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setToolbarHeight(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mToolbar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updatePhotoTintAndDropShadow()V

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V

    return-void
.end method

.method public setUseGradient(Z)V
    .locals 4
    .param p1    # Z

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mTitleGradientView:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller;->mActionBarGradientView:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
