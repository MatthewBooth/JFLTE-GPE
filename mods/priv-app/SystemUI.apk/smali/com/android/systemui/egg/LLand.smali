.class public Lcom/android/systemui/egg/LLand;
.super Landroid/widget/FrameLayout;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/egg/LLand$Star;,
        Lcom/android/systemui/egg/LLand$Cloud;,
        Lcom/android/systemui/egg/LLand$Building;,
        Lcom/android/systemui/egg/LLand$Scenery;,
        Lcom/android/systemui/egg/LLand$Stem;,
        Lcom/android/systemui/egg/LLand$Pop;,
        Lcom/android/systemui/egg/LLand$Obstacle;,
        Lcom/android/systemui/egg/LLand$Player;,
        Lcom/android/systemui/egg/LLand$GameView;,
        Lcom/android/systemui/egg/LLand$Params;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static PARAMS:Lcom/android/systemui/egg/LLand$Params;

.field static final POPS:[I

.field private static final SKIES:[[I

.field static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private dt:F

.field final hsv:[F

.field private mAnim:Landroid/animation/TimeAnimator;

.field private mAnimating:Z

.field private mDroid:Lcom/android/systemui/egg/LLand$Player;

.field private mFlipped:Z

.field private mFrozen:Z

.field private mHeight:I

.field private mLastPipeTime:F

.field private mObstaclesInPlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/egg/LLand$Obstacle;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaying:Z

.field private mScore:I

.field private mScoreField:Landroid/widget/TextView;

.field private mSplash:Landroid/view/View;

.field private mTimeOfDay:I

.field private mWidth:I

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const-string v0, "LLand"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/egg/LLand;->POPS:[I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/egg/LLand;->SKIES:[[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/egg/LLand;->sTmpRect:Landroid/graphics/Rect;

    return-void

    :array_0
    .array-data 4
        0x7f0200e7
        0x0
        0x7f0200e8
        0x0
        0x7f0200e9
        0x1
        0x7f0200ea
        0x0
        0x7f0200eb
        0x1
        0x7f0200ec
        0x1
        0x7f0200ed
        0x1
    .end array-data

    :array_1
    .array-data 4
        -0x3f3f01
        -0x5f5f01
    .end array-data

    :array_2
    .array-data 4
        -0xfffff0
        -0x1000000
    .end array-data

    :array_3
    .array-data 4
        -0xffffc0
        -0xfffff0
    .end array-data

    :array_4
    .array-data 4
        -0x5f7fe0
        -0xdfbf80
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/egg/LLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/egg/LLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/egg/LLand;->hsv:[F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand;->setFocusable(Z)V

    new-instance v0, Lcom/android/systemui/egg/LLand$Params;

    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/LLand$Params;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/systemui/egg/LLand;->SKIES:[[I

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static final varargs L(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/Object;

    sget-boolean v0, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LLand"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/egg/LLand;JJ)V
    .locals 1
    .param p0    # Lcom/android/systemui/egg/LLand;
    .param p1    # J
    .param p3    # J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/egg/LLand;->step(JJ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/egg/LLand;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/egg/LLand;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/egg/LLand;->mFrozen:Z

    return p1
.end method

.method static synthetic access$200()Lcom/android/systemui/egg/LLand$Params;
    .locals 1

    sget-object v0, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    return-object v0
.end method

.method private addScore(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/systemui/egg/LLand;->mScore:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/LLand;->setScore(I)V

    return-void
.end method

.method public static final clamp(F)F
    .locals 3
    .param p0    # F

    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method public static final frand()F
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final frand(FF)F
    .locals 1
    .param p0    # F
    .param p1    # F

    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/android/systemui/egg/LLand;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static final irand(II)I
    .locals 3
    .param p0    # I
    .param p1    # I

    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v0

    int-to-float v1, p0

    int-to-float v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/egg/LLand;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static final lerp(FFF)F
    .locals 1
    .param p0    # F
    .param p1    # F
    .param p2    # F

    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private poke()V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "poke"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mFrozen:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->reset()V

    invoke-direct {p0, v2}, Lcom/android/systemui/egg/LLand;->start(Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    invoke-virtual {v0}, Lcom/android/systemui/egg/LLand$Player;->boost()V

    sget-boolean v0, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    iget v1, v0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    const/high16 v2, 0x3f800000

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    invoke-virtual {v0}, Lcom/android/systemui/egg/LLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/systemui/egg/LLand;->start(Z)V

    goto :goto_1
.end method

.method private reset()V
    .locals 26

    const-string v21, "reset"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v17, Landroid/graphics/drawable/GradientDrawable;

    sget-object v21, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v22, Lcom/android/systemui/egg/LLand;->SKIES:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v21

    const/high16 v22, 0x3f000000

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1

    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/egg/LLand;->mFlipped:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/egg/LLand;->mFlipped:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    const/high16 v21, -0x40800000

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand;->setScaleX(F)V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/LLand;->setScore(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getChildCount()I

    move-result v8

    move v9, v8

    :goto_2
    add-int/lit8 v8, v9, -0x1

    if-lez v9, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/egg/LLand;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/systemui/egg/LLand$GameView;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/egg/LLand;->removeViewAt(I)V

    :cond_0
    move v9, v8

    goto :goto_2

    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    :cond_2
    const/high16 v21, 0x3f800000

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/LLand;->mWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/LLand;->mHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    :cond_4
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fd0000000000000L

    cmpl-double v21, v22, v24

    if-lez v21, :cond_a

    const/16 v16, 0x1

    :goto_3
    if-eqz v16, :cond_5

    new-instance v18, Lcom/android/systemui/egg/LLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/LLand$Star;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    const v21, 0x7f0202e3

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Star;->setBackgroundResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c00ce

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Star;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    if-nez v21, :cond_b

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3f28f5c3

    mul-float v22, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Star;->setTranslationY(F)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_4
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    :cond_6
    const/4 v6, 0x1

    :goto_5
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v7

    if-eqz v6, :cond_7

    const/high16 v21, 0x3f400000

    cmpg-float v21, v7, v21

    if-ltz v21, :cond_8

    :cond_7
    const/high16 v21, 0x3f000000

    cmpg-float v21, v7, v21

    if-gez v21, :cond_9

    :cond_8
    new-instance v12, Lcom/android/systemui/egg/LLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Lcom/android/systemui/egg/LLand$Star;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    const v21, 0x7f0200dc

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/egg/LLand$Star;->setBackgroundResource(I)V

    invoke-virtual {v12}, Lcom/android/systemui/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-eqz v6, :cond_d

    const/16 v21, 0xff

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L

    cmpl-double v21, v22, v24

    if-lez v21, :cond_e

    const/high16 v21, -0x40800000

    :goto_7
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/egg/LLand$Star;->setScaleX(F)V

    invoke-virtual {v12}, Lcom/android/systemui/egg/LLand$Star;->getScaleX()F

    move-result v21

    const/high16 v22, 0x40a00000

    const/high16 v23, 0x41f00000

    invoke-static/range {v22 .. v23}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/egg/LLand$Star;->setRotation(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c00ce

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/egg/LLand$Star;->setTranslationX(F)V

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui/egg/LLand$Star;->setTranslationY(F)V

    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v21, v0

    div-int/lit8 v11, v21, 0x6

    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fd0000000000000L

    cmpg-double v21, v22, v24

    if-gez v21, :cond_f

    const/4 v5, 0x1

    :goto_8
    const/16 v4, 0x14

    const/4 v8, 0x0

    :goto_9
    const/16 v21, 0x14

    move/from16 v0, v21

    if-ge v8, v0, :cond_14

    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v14

    float-to-double v0, v14

    move-wide/from16 v22, v0

    const-wide v24, 0x3fd3333333333333L

    cmpg-double v21, v22, v24

    if-gez v21, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    if-eqz v21, :cond_10

    new-instance v15, Lcom/android/systemui/egg/LLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/egg/LLand$Star;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    :goto_a
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->w:I

    move/from16 v21, v0

    iget v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->h:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    instance-of v0, v15, Lcom/android/systemui/egg/LLand$Building;

    move/from16 v21, v0

    if-eqz v21, :cond_12

    const/16 v21, 0x50

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v10}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    move/from16 v22, v0

    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/systemui/egg/LLand$Scenery;->setTranslationX(F)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f28f5c3

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui/egg/LLand;->frand(FF)F

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Star;->setTranslationY(F)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const v22, -0x3f008000

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_4

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_d
    const/16 v21, 0x80

    goto/16 :goto_6

    :cond_e
    const/high16 v21, 0x3f800000

    goto/16 :goto_7

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_10
    float-to-double v0, v14

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe3333333333333L

    cmpg-double v21, v22, v24

    if-gez v21, :cond_11

    if-nez v5, :cond_11

    new-instance v15, Lcom/android/systemui/egg/LLand$Cloud;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/egg/LLand$Cloud;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    goto/16 :goto_a

    :cond_11
    new-instance v15, Lcom/android/systemui/egg/LLand$Building;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/egg/LLand$Building;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    int-to-float v0, v8

    move/from16 v21, v0

    const/high16 v22, 0x41a00000

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->z:F

    sget-object v21, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->SCENERY_Z:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000

    iget v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->z:F

    move/from16 v23, v0

    add-float v22, v22, v23

    mul-float v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/systemui/egg/LLand$Scenery;->setTranslationZ(F)V

    const v21, 0x3f59999a

    iget v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->z:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->v:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x432f0000

    aput v23, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/high16 v23, 0x3e800000

    aput v23, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/high16 v23, 0x3f800000

    iget v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->z:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    aput v23, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/systemui/egg/LLand$Scenery;->setBackgroundColor(I)V

    sget-object v21, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->BUILDING_HEIGHT_MIN:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v11}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v21

    move/from16 v0, v21

    iput v0, v15, Lcom/android/systemui/egg/LLand$Scenery;->h:I

    goto/16 :goto_a

    :cond_12
    const/16 v21, 0x30

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v13

    instance-of v0, v15, Lcom/android/systemui/egg/LLand$Star;

    move/from16 v21, v0

    if-eqz v21, :cond_13

    mul-float v21, v13, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_b

    :cond_13
    const/high16 v21, 0x3f800000

    mul-float v22, v13, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    const/high16 v23, 0x40000000

    div-float v22, v22, v23

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_b

    :cond_14
    new-instance v21, Lcom/android/systemui/egg/LLand$Player;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/LLand$Player;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/egg/LLand$Player;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/egg/LLand$Player;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v21, v0

    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v23, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_SIZE:I

    move/from16 v23, v0

    sget-object v24, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_SIZE:I

    move/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v21, Landroid/animation/TimeAnimator;

    invoke-direct/range {v21 .. v21}, Landroid/animation/TimeAnimator;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/systemui/egg/LLand$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/LLand$1;-><init>(Lcom/android/systemui/egg/LLand;)V

    invoke-virtual/range {v21 .. v22}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method

.method public static final rlerp(FFF)F
    .locals 2
    .param p0    # F
    .param p1    # F
    .param p2    # F

    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private setScore(I)V
    .locals 2
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/egg/LLand;->mScore:I

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private start(Z)V
    .locals 7
    .param p1    # Z

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "start(startPlaying=%s)"

    new-array v2, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    const-string v0, "true"

    :goto_0
    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iput-boolean v5, p0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    iput v4, p0, Lcom/android/systemui/egg/LLand;->t:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand;->getGameTime()F

    move-result v0

    sget-object v1, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v1, v1, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/egg/LLand;->mLastPipeTime:F

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mSplash:Landroid/view/View;

    sget-object v1, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v1, v1, Lcom/android/systemui/egg/LLand$Params;->HUD_Z:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    invoke-virtual {v0, v6}, Lcom/android/systemui/egg/LLand$Player;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    iget v1, p0, Lcom/android/systemui/egg/LLand;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Player;->setX(F)V

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    iget v1, p0, Lcom/android/systemui/egg/LLand;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Player;->setY(F)V

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    iput-boolean v5, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "false"

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/LLand$Player;->setVisibility(I)V

    goto :goto_1
.end method

.method private step(JJ)V
    .locals 27
    .param p1    # J
    .param p3    # J

    move-wide/from16 v0, p1

    long-to-float v3, v0

    const/high16 v4, 0x447a0000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/LLand;->t:F

    move-wide/from16 v0, p3

    long-to-float v3, v0

    const/high16 v4, 0x447a0000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/LLand;->dt:F

    sget-boolean v3, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->t:F

    const/high16 v4, 0x3f800000

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/LLand;->t:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->dt:F

    const/high16 v4, 0x3f800000

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/LLand;->dt:F

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getChildCount()I

    move-result v2

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v2, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/LLand;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/android/systemui/egg/LLand$GameView;

    if-eqz v3, :cond_1

    move-object/from16 v3, v25

    check-cast v3, Lcom/android/systemui/egg/LLand$GameView;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/egg/LLand;->t:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/egg/LLand;->dt:F

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v3 .. v9}, Lcom/android/systemui/egg/LLand$GameView;->step(JJFF)V

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/egg/LLand$Player;->below(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "player hit the floor"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->stop()V

    :cond_3
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v16, v15

    :goto_1
    add-int/lit8 v15, v16, -0x1

    if-lez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/egg/LLand$Obstacle;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->intersects(Lcom/android/systemui/egg/LLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "player hit an obstacle"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->stop()V

    :cond_4
    :goto_2
    move/from16 v16, v15

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->cleared(Lcom/android/systemui/egg/LLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/systemui/egg/LLand$Stem;

    if-eqz v3, :cond_6

    const/16 v21, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_8

    if-eqz v21, :cond_8

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/egg/LLand;->addScore(I)V

    :cond_8
    move v13, v12

    :goto_3
    add-int/lit8 v12, v13, -0x1

    if-lez v13, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/LLand;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/android/systemui/egg/LLand$Obstacle;

    if-eqz v3, :cond_a

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/LLand;->removeViewAt(I)V

    :cond_9
    :goto_4
    move v13, v12

    goto :goto_3

    :cond_a
    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/android/systemui/egg/LLand$Scenery;

    if-eqz v3, :cond_9

    move-object/from16 v22, v25

    check-cast v22, Lcom/android/systemui/egg/LLand$Scenery;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTranslationX()F

    move-result v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/systemui/egg/LLand$Scenery;->w:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->t:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/LLand;->mLastPipeTime:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->t:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/LLand;->mLastPipeTime:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    sget-object v6, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v6, v6, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_MIN:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    sget-object v6, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v6, v6, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_MIN:I

    add-int v18, v3, v4

    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v14, v3, 0x2

    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v26, v3, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v10

    new-instance v23, Lcom/android/systemui/egg/LLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sub-int v4, v18, v26

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui/egg/LLand$Stem;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;FZ)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    float-to-int v5, v5

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationX(F)V

    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    neg-float v3, v3

    move/from16 v0, v26

    int-to-float v4, v0

    sub-float/2addr v3, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationY(F)V

    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000

    mul-float/2addr v3, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationZ(F)V

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v10

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Lcom/android/systemui/egg/LLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/egg/LLand$Pop;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;F)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    sget-object v5, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationX(F)V

    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationY(F)V

    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationZ(F)V

    const/high16 v3, 0x3e800000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setScaleX(F)V

    const/high16 v3, 0x3e800000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setScaleY(F)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    int-to-float v5, v14

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v10

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v11

    new-instance v24, Lcom/android/systemui/egg/LLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    sub-int v4, v4, v18

    sget-object v5, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v5

    sub-int v4, v4, v26

    int-to-float v4, v4

    const/4 v5, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui/egg/LLand$Stem;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;FZ)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    float-to-int v5, v5

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    add-int v3, v3, v26

    int-to-float v3, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationY(F)V

    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000

    mul-float/2addr v3, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationZ(F)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v11

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v20, Lcom/android/systemui/egg/LLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/egg/LLand$Pop;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;F)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    sget-object v5, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationY(F)V

    sget-object v3, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationZ(F)V

    const/high16 v3, 0x3e800000

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setScaleX(F)V

    const/high16 v3, 0x3e800000

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/LLand$Obstacle;->setScaleY(F)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/LLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    move/from16 v0, v26

    int-to-float v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v11

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method private stop()V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    iput-boolean v2, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    sget-object v0, Lcom/android/systemui/egg/LLand;->SKIES:[[I

    array-length v0, v0

    invoke-static {v2, v0}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand;->mTimeOfDay:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mFrozen:Z

    new-instance v0, Lcom/android/systemui/egg/LLand$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/egg/LLand$2;-><init>(Lcom/android/systemui/egg/LLand;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/egg/LLand;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private unpoke()V
    .locals 2

    const-string v0, "unboost"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mFrozen:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/LLand;->mDroid:Lcom/android/systemui/egg/LLand$Player;

    invoke-virtual {v0}, Lcom/android/systemui/egg/LLand$Player;->unboost()V

    goto :goto_0
.end method


# virtual methods
.method public getGameTime()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/LLand;->t:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "generic: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "keyDown: %d"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->poke()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "keyDown: %d"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->unpoke()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->stop()V

    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->reset()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/LLand;->start(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "touch: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->poke()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->unpoke()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "trackball: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->poke()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/egg/LLand;->unpoke()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScoreField(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/egg/LLand;->mScoreField:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/systemui/egg/LLand;->PARAMS:Lcom/android/systemui/egg/LLand$Params;

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->HUD_Z:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationZ(F)V

    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mAnimating:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/egg/LLand;->mPlaying:Z

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, -0x3c060000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public setSplash(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/egg/LLand;->mSplash:Landroid/view/View;

    return-void
.end method

.method public willNotDraw()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/egg/LLand;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
