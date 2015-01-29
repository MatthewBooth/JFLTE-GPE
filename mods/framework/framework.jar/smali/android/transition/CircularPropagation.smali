.class public Landroid/transition/CircularPropagation;
.super Landroid/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularPropagation"


# instance fields
.field private mPropagationSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000

    iput v0, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method

.method private static distance(FFFF)F
    .locals 4
    .param p0    # F
    .param p1    # F
    .param p2    # F
    .param p3    # F

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .locals 19
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Landroid/transition/Transition;
    .param p3    # Landroid/transition/TransitionValues;
    .param p4    # Landroid/transition/TransitionValues;

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const-wide/16 v16, 0x0

    :goto_0
    return-wide v16

    :cond_0
    const/4 v2, 0x1

    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/transition/CircularPropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v15

    if-nez v15, :cond_3

    :cond_1
    move-object/from16 v12, p3

    const/4 v2, -0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/transition/CircularPropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/transition/CircularPropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    :goto_2
    int-to-float v15, v13

    int-to-float v0, v14

    move/from16 v16, v0

    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    invoke-static/range {v15 .. v18}, Landroid/transition/CircularPropagation;->distance(FFFF)F

    move-result v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v15 .. v18}, Landroid/transition/CircularPropagation;->distance(FFFF)F

    move-result v11

    div-float v4, v3, v11

    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-gez v15, :cond_2

    const-wide/16 v6, 0x12c

    :cond_2
    int-to-long v0, v2

    move-wide/from16 v16, v0

    mul-long v16, v16, v6

    move-wide/from16 v0, v16

    long-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    move/from16 v16, v0

    div-float v15, v15, v16

    mul-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    goto :goto_0

    :cond_3
    move-object/from16 v12, p4

    goto :goto_1

    :cond_4
    const/4 v15, 0x2

    new-array v10, v15, [I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v15, 0x0

    aget v15, v10, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v16

    add-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v15, 0x1

    aget v15, v10, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v16

    add-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v9

    goto/16 :goto_2
.end method

.method public setPropagationSpeed(F)V
    .locals 2
    .param p1    # F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method
