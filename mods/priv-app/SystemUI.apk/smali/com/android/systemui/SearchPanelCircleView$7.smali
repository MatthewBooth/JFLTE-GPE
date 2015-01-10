.class Lcom/android/systemui/SearchPanelCircleView$7;
.super Ljava/lang/Object;
.source "SearchPanelCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelCircleView;->performExitFadeOutAnimation(IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1    # Landroid/animation/ValueAnimator;

    const/high16 v5, 0x3f000000

    const v6, 0x3e4ccccd

    const/high16 v3, 0x3f800000

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    cmpl-float v4, v0, v5

    if-lez v4, :cond_0

    move v2, v3

    :goto_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    sub-float v5, v3, v2

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    cmpg-float v4, v0, v6

    if-gez v4, :cond_1

    const/4 v1, 0x0

    :goto_1
    sub-float v1, v3, v1

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    # getter for: Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/android/systemui/SearchPanelCircleView;->access$700(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v4, 0x437f0000

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    # setter for: Lcom/android/systemui/SearchPanelCircleView;->mOutlineAlpha:F
    invoke-static {v3, v1}, Lcom/android/systemui/SearchPanelCircleView;->access$502(Lcom/android/systemui/SearchPanelCircleView;F)F

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    # getter for: Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/systemui/SearchPanelCircleView;->access$800(Lcom/android/systemui/SearchPanelCircleView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v3}, Lcom/android/systemui/SearchPanelCircleView;->invalidateOutline()V

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$7;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v3}, Lcom/android/systemui/SearchPanelCircleView;->invalidate()V

    return-void

    :cond_0
    div-float v2, v0, v5

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    sub-float v5, v0, v6

    const v6, 0x3f4ccccd

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_1
.end method
