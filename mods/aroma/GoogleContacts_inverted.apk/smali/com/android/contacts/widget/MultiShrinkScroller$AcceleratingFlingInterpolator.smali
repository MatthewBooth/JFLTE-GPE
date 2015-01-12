.class Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;
.super Ljava/lang/Object;
.source "MultiShrinkScroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcceleratingFlingInterpolator"
.end annotation


# instance fields
.field private final mDurationMs:F

.field private final mNumberFrames:F

.field private final mPixelsDelta:I

.field private final mStartingSpeedPixelsPerFrame:F


# direct methods
.method public constructor <init>(IFI)V
    .locals 4
    .param p1    # I
    .param p2    # F
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->getRefreshRate()F

    move-result v0

    div-float v0, p2, v0

    iput v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mStartingSpeedPixelsPerFrame:F

    int-to-float v0, p1

    iput v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mDurationMs:F

    iput p3, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mPixelsDelta:I

    iget v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mDurationMs:F

    invoke-virtual {p0}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->getFrameIntervalMs()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mNumberFrames:F

    return-void
.end method

.method private getRefreshRate()F
    .locals 3

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v1, v0, Landroid/view/DisplayInfo;->refreshRate:F

    return v1
.end method


# virtual methods
.method public getFrameIntervalMs()J
    .locals 2

    const/high16 v0, 0x447a0000

    invoke-direct {p0}, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->getRefreshRate()F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .locals 5
    .param p1    # F

    const/high16 v4, 0x3f800000

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mNumberFrames:F

    mul-float v0, v2, p1

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mStartingSpeedPixelsPerFrame:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mPixelsDelta:I

    int-to-float v3, v3

    div-float v1, v2, v3

    iget v2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$AcceleratingFlingInterpolator;->mStartingSpeedPixelsPerFrame:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    mul-float v2, p1, p1

    add-float/2addr v2, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_0
    return v2

    :cond_0
    sub-float v2, p1, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0
.end method
