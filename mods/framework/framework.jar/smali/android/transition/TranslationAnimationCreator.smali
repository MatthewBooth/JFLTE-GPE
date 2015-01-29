.class Landroid/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TranslationAnimationCreator$1;,
        Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 13
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/transition/TransitionValues;
    .param p2    # I
    .param p3    # I
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v8

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v4, 0x1020045

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v12, v3

    check-cast v12, [I

    if-eqz v12, :cond_0

    const/4 v3, 0x0

    aget v3, v12, v3

    sub-int/2addr v3, p2

    int-to-float v3, v3

    add-float p4, v3, v7

    const/4 v3, 0x1

    aget v3, v12, v3

    sub-int v3, v3, p3

    int-to-float v3, v3

    add-float p5, v3, v8

    :cond_0
    sub-float v3, p4, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v5, p2, v3

    sub-float v3, p5, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v6, p3, v3

    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    move/from16 v0, p5

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v3, p4, p6

    if-nez v3, :cond_1

    cmpl-float v3, p5, p7

    if-nez v3, :cond_1

    const/4 v10, 0x0

    :goto_0
    return-object v10

    :cond_1
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p0, v3, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v2, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator$1;)V

    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method
