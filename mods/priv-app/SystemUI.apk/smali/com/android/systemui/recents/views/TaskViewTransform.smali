.class public Lcom/android/systemui/recents/views/TaskViewTransform;
.super Ljava/lang/Object;
.source "TaskViewTransform.java"


# instance fields
.field public alpha:F

.field p:F

.field public rect:Landroid/graphics/Rect;

.field public scale:F

.field public startDelay:I

.field public translationY:I

.field public translationZ:F

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    return-void
.end method

.method public static reset(Landroid/view/View;)V
    .locals 2
    .param p0    # Landroid/view/View;

    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public applyToTaskView(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/animation/Interpolator;
    .param p4    # Z
    .param p5    # Z
    .param p6    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-lez p2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationYChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_4
    if-eqz p6, :cond_6

    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationYChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    if-eqz p5, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationZ(F)V

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public hasAlphaChangedFrom(F)Z
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScaleChangedFrom(F)Z
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTranslationYChangedFrom(F)Z
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTranslationZChangedFrom(F)Z
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskViewTransform delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " z: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " p: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
