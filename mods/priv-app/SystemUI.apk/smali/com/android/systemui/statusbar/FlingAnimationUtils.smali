.class public Lcom/android/systemui/statusbar/FlingAnimationUtils;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/FlingAnimationUtils$1;,
        Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;,
        Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;,
        Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    }
.end annotation


# instance fields
.field private mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

.field private mFastOutLinearIn:Landroid/view/animation/Interpolator;

.field private mFastOutSlowIn:Landroid/view/animation/Interpolator;

.field private mHighVelocityPxPerSecond:F

.field private mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field private mMaxLengthSeconds:F

.field private mMinVelocityPxPerSecond:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # F

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;-><init>(Lcom/android/systemui/statusbar/FlingAnimationUtils$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mFastOutLinearIn:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x437a0000

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    const v0, 0x453b8000

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    return-void
.end method

.method private calculateLinearOutFasterInY2(F)F
    .locals 5
    .param p1    # F

    const/high16 v4, 0x3f800000

    iget v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    iget v3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float/2addr v2, v3

    div-float v0, v1, v2

    const/4 v1, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v1, v4, v0

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getDismissingProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    .locals 18
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v12, v11

    sub-float v11, p2, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float v11, v11, p4

    float-to-double v14, v11

    const-wide/high16 v16, 0x3fe0000000000000L

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v5, v12

    sub-float v11, p2, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->calculateLinearOutFasterInY2(F)F

    move-result v10

    const/high16 v11, 0x3f000000

    div-float v6, v10, v11

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f000000

    invoke-direct {v4, v11, v12, v13, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    mul-float v11, v6, v2

    div-float v3, v11, v8

    cmpg-float v11, v3, v5

    if-gtz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v4, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/high16 v12, 0x447a0000

    mul-float/2addr v12, v3

    float-to-long v12, v12

    iput-wide v12, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    return-object v11

    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_1

    move v3, v5

    new-instance v9, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;

    const/4 v11, 0x0

    invoke-direct {v9, v3, v8, v2, v11}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$1;)V

    new-instance v7, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-direct {v7, v9, v4, v11}, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v7, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    move v3, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mFastOutLinearIn:Landroid/view/animation/Interpolator;

    iput-object v12, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    .locals 10
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    iget v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v6, v6

    sub-float v8, p2, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v8, p4

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v2, v6

    sub-float v6, p2, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x4036db6e

    mul-float/2addr v6, v0

    div-float v1, v6, v4

    cmpg-float v6, v1, v2

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    iput-object v7, v6, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/high16 v7, 0x447a0000

    mul-float/2addr v7, v1

    float-to-long v8, v7

    iput-wide v8, v6, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    return-object v6

    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_1

    move v1, v2

    new-instance v5, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v4, v0, v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$1;)V

    new-instance v3, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;

    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v3, v6, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    move v1, v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iget-object v7, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    iput-object v7, v6, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;FFF)V
    .locals 6
    .param p1    # Landroid/animation/Animator;
    .param p2    # F
    .param p3    # F
    .param p4    # F

    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    return-void
.end method

.method public apply(Landroid/animation/Animator;FFFF)V
    .locals 4
    .param p1    # Landroid/animation/Animator;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    iget-wide v2, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public applyDismissing(Landroid/animation/Animator;FFFF)V
    .locals 4
    .param p1    # Landroid/animation/Animator;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getDismissingProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    iget-wide v2, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public getMinVelocityPxPerSecond()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    return v0
.end method
