.class public Lcom/android/systemui/statusbar/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "NotificationContentView.java"


# static fields
.field private static final INVERT_PAINT:Landroid/graphics/Paint;

.field private static final NO_COLOR_FILTER:Landroid/graphics/ColorFilter;


# instance fields
.field private mActualHeight:I

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipTopAmount:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedVisible:Z

.field private mDark:Z

.field private mExpandedChild:Landroid/view/View;

.field private final mFadePaint:Landroid/graphics/Paint;

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mSmallHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationContentView;->createInvertPaint()Landroid/graphics/Paint;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationContentView;->INVERT_PAINT:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorFilter;

    invoke-direct {v0}, Landroid/graphics/ColorFilter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationContentView;->NO_COLOR_FILTER:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedVisible:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->reset()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method private static createInvertPaint()Landroid/graphics/Paint;
    .locals 4

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0x14

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-object v1

    :array_0
    .array-data 4
        -0x40800000
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x0
        -0x40800000
        0x0
        0x3f800000
        0x3f800000
        0x0
        0x0
        -0x40800000
        0x3f800000
        0x3f800000
        0x0
        0x0
        0x0
        0x3f800000
        0x0
    .end array-data
.end method

.method private runSwitchAnimation(Z)V
    .locals 8
    .param p1    # Z

    const-wide/16 v6, 0xaa

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/NotificationContentView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method private sanitizeContractedLayoutParams(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private selectLayout(ZZ)V
    .locals 7
    .param p1    # Z
    .param p2    # Z

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->showContractedChild()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedVisible:Z

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->runSwitchAnimation(Z)V

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedVisible:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_5

    move v1, v4

    :goto_3
    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_6

    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    :goto_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v5

    goto :goto_3

    :cond_6
    move v3, v2

    goto :goto_4

    :cond_7
    move v5, v4

    goto :goto_5
.end method

.method private setImageViewDark(ZZI)V
    .locals 6
    .param p1    # Z
    .param p2    # Z
    .param p3    # I

    const/4 v3, 0x0

    const v5, 0x7f0e0012

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v3, 0x2

    sget-object v4, Lcom/android/systemui/statusbar/NotificationContentView;->INVERT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v5, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/NotificationContentView;->NO_COLOR_FILTER:Landroid/graphics/ColorFilter;

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz v0, :cond_0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_5

    sget-object v4, Lcom/android/systemui/statusbar/NotificationContentView;->NO_COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne v1, v4, :cond_4

    move-object v1, v3

    :cond_4
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v2, v5, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_5
    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0
.end method

.method private showContractedChild()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActualHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClipping()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActualHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getContractedChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method public getExpandedChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyContentUpdated()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeAllViews()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActualHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedVisible:Z

    return-void
.end method

.method public setActualHeight(I)V
    .locals 2
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActualHeight:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->sanitizeContractedLayoutParams(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    return-void
.end method

.method public setDark(ZZ)V
    .locals 1
    .param p1    # Z
    .param p2    # Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const v0, 0x1020034

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setImageViewDark(ZZI)V

    const v0, 0x1020006

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setImageViewDark(ZZI)V

    goto :goto_0
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    return-void
.end method
