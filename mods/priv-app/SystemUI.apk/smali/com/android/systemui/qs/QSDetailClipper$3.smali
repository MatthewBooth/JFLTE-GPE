.class Lcom/android/systemui/qs/QSDetailClipper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSDetailClipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailClipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailClipper;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetailClipper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper$3;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$3;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    # getter for: Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailClipper;->access$200(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$3;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    # getter for: Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailClipper;->access$200(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$3;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    # getter for: Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailClipper;->access$100(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$3;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    # setter for: Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;
    invoke-static {v0, v2}, Lcom/android/systemui/qs/QSDetailClipper;->access$002(Lcom/android/systemui/qs/QSDetailClipper;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
