.class Landroid/transition/ChangeTransform$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeTransform;->createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$transforms:Landroid/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/transition/ChangeTransform$Transforms;)V
    .locals 1

    iput-object p1, p0, Landroid/transition/ChangeTransform$2;->this$0:Landroid/transition/ChangeTransform;

    iput-boolean p2, p0, Landroid/transition/ChangeTransform$2;->val$handleParentChange:Z

    iput-object p3, p0, Landroid/transition/ChangeTransform$2;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    iput-object p5, p0, Landroid/transition/ChangeTransform$2;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private setCurrentMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1    # Landroid/graphics/Matrix;

    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    const v1, 0x1020046

    iget-object v2, p0, Landroid/transition/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeTransform$2;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/transition/ChangeTransform$2;->mIsCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/transition/ChangeTransform$2;->val$handleParentChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->this$0:Landroid/transition/ChangeTransform;

    # getter for: Landroid/transition/ChangeTransform;->mUseOverlay:Z
    invoke-static {v0}, Landroid/transition/ChangeTransform;->access$000(Landroid/transition/ChangeTransform;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$finalEndMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Landroid/transition/ChangeTransform$2;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    :goto_0
    # getter for: Landroid/transition/ChangeTransform;->ANIMATION_MATRIX_PROPERTY:Landroid/util/Property;
    invoke-static {}, Landroid/transition/ChangeTransform;->access$100()Landroid/util/Property;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    const v1, 0x1020046

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    const v1, 0x1020047

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Landroid/transition/ChangeTransform$2;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    # invokes: Landroid/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V
    invoke-static {v0}, Landroid/transition/ChangeTransform;->access$200(Landroid/view/View;)V

    return-void
.end method
