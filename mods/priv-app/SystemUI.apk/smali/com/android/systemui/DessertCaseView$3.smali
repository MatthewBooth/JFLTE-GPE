.class Lcom/android/systemui/DessertCaseView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DessertCaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DessertCaseView;->makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DessertCaseView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$3;->this$0:Lcom/android/systemui/DessertCaseView;

    iput-object p2, p0, Lcom/android/systemui/DessertCaseView$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$3;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$3;->val$v:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$3;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    return-void
.end method
