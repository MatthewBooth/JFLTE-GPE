.class public Lcom/android/systemui/qs/QSDetailClipper;
.super Ljava/lang/Object;
.source "QSDetailClipper.java"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private final mBackground:Landroid/graphics/drawable/TransitionDrawable;

.field private final mDetail:Landroid/view/View;

.field private final mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

.field private final mReverseBackground:Ljava/lang/Runnable;

.field private final mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper$1;-><init>(Lcom/android/systemui/qs/QSDetailClipper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mReverseBackground:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper$2;-><init>(Lcom/android/systemui/qs/QSDetailClipper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper$3;-><init>(Lcom/android/systemui/qs/QSDetailClipper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/animation/Animator;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QSDetailClipper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSDetailClipper;
    .param p1    # Landroid/animation/Animator;

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # Landroid/animation/Animator$AnimatorListener;

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int v2, v3, p1

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v0, v3, p2

    mul-int v3, p1, p1

    mul-int v4, p2, p2

    add-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    int-to-double v4, v1

    mul-int v3, v2, v2

    mul-int v6, p2, p2

    add-int/2addr v3, v6

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v1, v4

    int-to-double v4, v1

    mul-int v3, v2, v2

    mul-int v6, v0, v0

    add-int/2addr v3, v6

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v1, v4

    int-to-double v4, v1

    mul-int v3, p1, p1

    mul-int v6, v0, v0

    add-int/2addr v3, v6

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v1, v4

    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    int-to-float v4, v1

    invoke-static {v3, p1, p2, v8, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz p3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    int-to-float v4, v1

    invoke-static {v3, p1, p2, v4, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mReverseBackground:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x3fe4cccccccccccdL

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1
.end method
