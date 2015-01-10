.class public Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "KeyguardClockPositionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    }
.end annotation


# static fields
.field private static final sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mClockNotificationsMarginMax:I

.field private mClockNotificationsMarginMin:I

.field private mClockYFractionMax:F

.field private mClockYFractionMin:F

.field private mDensity:F

.field private mEmptyDragAmount:F

.field private mExpandedHeight:F

.field private mHeight:I

.field private mKeyguardStatusHeight:I

.field private mMaxKeyguardNotifications:I

.field private mMaxPanelHeight:I

.field private mMoreCardNotificationAmount:F

.field private mNotificationCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3e99999a

    const/high16 v2, 0x3f600000

    const v3, 0x3f19999a

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method private getClockAlpha(F)F
    .locals 5
    .param p1    # F

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    const/high16 v1, 0x3f000000

    :goto_0
    sub-float v2, p1, v1

    const v3, 0x3f733333

    sub-float/2addr v3, v1

    div-float v0, v2, v3

    const/high16 v2, 0x3f800000

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    :cond_0
    const/high16 v1, 0x3f400000

    goto :goto_0
.end method

.method private getClockNotificationsPadding()I
    .locals 4

    const/high16 v2, 0x3f800000

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMax:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getClockScale(III)F
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/high16 v8, 0x3f800000

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    const/high16 v3, 0x40c00000

    :goto_0
    int-to-float v4, p2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float v2, v4, v5

    int-to-float v4, p1

    sub-float v0, v4, v2

    int-to-float v4, p3

    sub-float/2addr v4, v2

    div-float v1, v0, v4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v1

    float-to-double v4, v1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    div-float/2addr v6, v7

    const/high16 v7, 0x43960000

    div-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-double v6, v6

    const-wide v8, 0x3fd3333340000000L

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    return v1

    :cond_0
    const/high16 v3, 0x40a00000

    goto :goto_0
.end method

.method private getClockY()I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYFraction()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getClockYExpansionAdjustment()F
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYExpansionRubberbandFactor()F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    sub-float/2addr v4, v5

    mul-float v3, v0, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    sget-object v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v4

    neg-float v4, v4

    const v5, 0x3ecccccd

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v5, v5

    mul-float v1, v4, v5

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    if-nez v4, :cond_0

    const/high16 v4, -0x40000000

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    const/high16 v5, 0x40400000

    div-float v1, v4, v5

    :cond_0
    return v1
.end method

.method private getClockYExpansionRubberbandFactor()F
    .locals 6

    const/high16 v1, 0x3f800000

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fd3333340000000L

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float/2addr v1, v0

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    const v2, 0x3da3d70a

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getClockYFraction()F
    .locals 3

    const/high16 v1, 0x3f800000

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMax:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMin:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getNotificationAmountT()F
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxKeyguardNotifications:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMoreCardNotificationAmount:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private getTopPaddingAdjMultiplier()F
    .locals 3

    const/high16 v1, 0x3f800000

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v1, v0

    const v2, 0x3fb33333

    mul-float/2addr v1, v2

    const v2, 0x404ccccd

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method


# virtual methods
.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 2
    .param p1    # Landroid/content/res/Resources;

    const/4 v1, 0x1

    const v0, 0x7f0c0076

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    const v0, 0x7f0c0077

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMax:I

    const v0, 0x7f0d0001

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMin:F

    const/high16 v0, 0x7f0d0000

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMax:F

    const v0, 0x7f0c001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f0c0019

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMoreCardNotificationAmount:F

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    return-void
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 9
    .param p1    # Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYExpansionAdjustment()F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getTopPaddingAdjMultiplier()F

    move-result v3

    mul-float v5, v0, v3

    float-to-int v5, v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockNotificationsPadding()I

    move-result v5

    iget v6, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    add-int v1, v5, v6

    add-int v2, v4, v1

    iput v4, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v5, v2

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget v6, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockNotificationsPadding()I

    move-result v7

    add-int/2addr v7, v4

    iget v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v7, v8

    invoke-direct {p0, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockScale(III)F

    move-result v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    iget v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockAlpha(F)F

    move-result v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    return-void
.end method

.method public setup(IIFIIIF)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # F
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxKeyguardNotifications:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    iput p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    iput p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    iput p6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    iput p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    return-void
.end method
