.class final Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/FlingAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InterpolatorInterpolator"
.end annotation


# instance fields
.field private mCrossfader:Landroid/view/animation/Interpolator;

.field private mInterpolator1:Landroid/view/animation/Interpolator;

.field private mInterpolator2:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1    # Landroid/view/animation/Interpolator;
    .param p2    # Landroid/view/animation/Interpolator;
    .param p3    # Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator1:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator2:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;->mCrossfader:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1    # F

    iget-object v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;->mCrossfader:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator1:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator2:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method
