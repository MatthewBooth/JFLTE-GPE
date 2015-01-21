.class public Lcom/android/phone/common/animation/AnimUtils;
.super Ljava/lang/Object;
.source "AnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;
    }
.end annotation


# static fields
.field public static final EASE_IN:Landroid/view/animation/Interpolator;

.field public static final EASE_OUT:Landroid/view/animation/Interpolator;

.field public static final EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v4, 0x3ecccccd

    const v3, 0x3e4ccccd

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static changeDimensions(Landroid/view/View;II)V
    .locals 7
    .param p0    # Landroid/view/View;
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v2, p1, v3

    sub-int v4, p2, v5

    new-instance v0, Lcom/android/phone/common/animation/AnimUtils$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/common/animation/AnimUtils$5;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public static crossFadeViews(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-static {p0, p2}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    invoke-static {p1, p2}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;I)V
    .locals 2
    .param p0    # Landroid/view/View;
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;IILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
    .locals 4
    .param p0    # Landroid/view/View;
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/phone/common/animation/AnimUtils$2;

    invoke-direct {v2, p0, p3}, Lcom/android/phone/common/animation/AnimUtils$2;-><init>(Landroid/view/View;Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    return-void
.end method

.method public static fadeOut(Landroid/view/View;ILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
    .locals 4
    .param p0    # Landroid/view/View;
    .param p1    # I
    .param p2    # Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/phone/common/animation/AnimUtils$1;

    invoke-direct {v2, p0, p2}, Lcom/android/phone/common/animation/AnimUtils$1;-><init>(Landroid/view/View;Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static scaleIn(Landroid/view/View;II)V
    .locals 7
    .param p0    # Landroid/view/View;
    .param p1    # I
    .param p2    # I

    new-instance v5, Lcom/android/phone/common/animation/AnimUtils$3;

    invoke-direct {v5, p0}, Lcom/android/phone/common/animation/AnimUtils$3;-><init>(Landroid/view/View;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v6, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/phone/common/animation/AnimUtils;->scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private static scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V
    .locals 4
    .param p0    # Landroid/view/View;
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Landroid/animation/AnimatorListenerAdapter;
    .param p6    # Landroid/view/animation/Interpolator;

    int-to-float v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    int-to-float v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static scaleOut(Landroid/view/View;I)V
    .locals 7
    .param p0    # Landroid/view/View;
    .param p1    # I

    const/4 v2, 0x0

    new-instance v5, Lcom/android/phone/common/animation/AnimUtils$4;

    invoke-direct {v5, p0}, Lcom/android/phone/common/animation/AnimUtils$4;-><init>(Landroid/view/View;)V

    const/4 v1, 0x1

    sget-object v6, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v3, p1

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/phone/common/animation/AnimUtils;->scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    return-void
.end method
