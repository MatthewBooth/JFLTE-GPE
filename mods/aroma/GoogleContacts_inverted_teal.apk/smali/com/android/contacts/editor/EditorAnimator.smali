.class public Lcom/android/contacts/editor/EditorAnimator;
.super Ljava/lang/Object;
.source "EditorAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/contacts/editor/EditorAnimator;


# instance fields
.field private mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/editor/EditorAnimator;

    invoke-direct {v0}, Lcom/android/contacts/editor/EditorAnimator;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/EditorAnimator;->sInstance:Lcom/android/contacts/editor/EditorAnimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-direct {v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .param p0    # Landroid/view/View;

    invoke-static {p0}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOf(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/List;Ljava/util/List;FFII)V
    .locals 0
    .param p0    # Ljava/util/List;
    .param p1    # Ljava/util/List;
    .param p2    # F
    .param p3    # F
    .param p4    # I
    .param p5    # I

    invoke-static/range {p0 .. p5}, Lcom/android/contacts/editor/EditorAnimator;->translateViews(Ljava/util/List;Ljava/util/List;FFII)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/EditorAnimator;)Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;
    .locals 1
    .param p0    # Lcom/android/contacts/editor/EditorAnimator;

    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    return-object v0
.end method

.method public static getInstance()Lcom/android/contacts/editor/EditorAnimator;
    .locals 1

    sget-object v0, Lcom/android/contacts/editor/EditorAnimator;->sInstance:Lcom/android/contacts/editor/EditorAnimator;

    return-object v0
.end method

.method private static getViewsBelowOf(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .param p0    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3, p0}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOfRecursive(Ljava/util/List;Landroid/view/ViewGroup;ILandroid/view/View;)V

    :cond_0
    return-object v1
.end method

.method private static getViewsBelowOfRecursive(Ljava/util/List;Landroid/view/ViewGroup;ILandroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # I
    .param p3    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "I",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    move v1, p2

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v5, v2, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v3, v5, p3}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOfRecursive(Ljava/util/List;Landroid/view/ViewGroup;ILandroid/view/View;)V

    :cond_2
    return-void
.end method

.method private static translateViews(Ljava/util/List;Ljava/util/List;FFII)V
    .locals 6
    .param p2    # F
    .param p3    # F
    .param p4    # I
    .param p5    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;FFII)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    const/4 v5, 0x1

    aput p3, v4, v5

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v4, p4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    int-to-long v4, p5

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public expandOrganization(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-virtual {v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->endOldAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->requestFocus()Z

    new-instance v0, Lcom/android/contacts/editor/EditorAnimator$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/contacts/editor/EditorAnimator$3;-><init>(Lcom/android/contacts/editor/EditorAnimator;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-static {p1, v0}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideAddFieldFooter(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-virtual {v2}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->endOldAnimation()V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {p1}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOf(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v2, 0xc8

    invoke-virtual {v6, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    neg-int v3, v7

    int-to-float v3, v3

    const/16 v4, 0x64

    const/16 v5, 0xc8

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/editor/EditorAnimator;->translateViews(Ljava/util/List;Ljava/util/List;FFII)V

    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    new-instance v3, Lcom/android/contacts/editor/EditorAnimator$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/contacts/editor/EditorAnimator$5;-><init>(Lcom/android/contacts/editor/EditorAnimator;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->run(Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method public removeEditorView(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-virtual {v2}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->endOldAnimation()V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {p1}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOf(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v2, 0xc8

    invoke-virtual {v6, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    neg-int v3, v7

    int-to-float v3, v3

    const/16 v4, 0x64

    const/16 v5, 0xc8

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/editor/EditorAnimator;->translateViews(Ljava/util/List;Ljava/util/List;FFII)V

    iget-object v2, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    new-instance v3, Lcom/android/contacts/editor/EditorAnimator$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/contacts/editor/EditorAnimator$1;-><init>(Lcom/android/contacts/editor/EditorAnimator;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->run(Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method public showAddFieldFooter(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-virtual {v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->endOldAnimation()V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Lcom/android/contacts/editor/EditorAnimator$4;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/editor/EditorAnimator$4;-><init>(Lcom/android/contacts/editor/EditorAnimator;Landroid/view/View;)V

    invoke-static {p1, v0}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public slideAndFadeIn(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # I

    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-virtual {v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->endOldAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    new-instance v0, Lcom/android/contacts/editor/EditorAnimator$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/editor/EditorAnimator$2;-><init>(Lcom/android/contacts/editor/EditorAnimator;Landroid/view/ViewGroup;I)V

    invoke-static {p1, v0}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
