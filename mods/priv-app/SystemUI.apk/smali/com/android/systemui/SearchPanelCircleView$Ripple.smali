.class Lcom/android/systemui/SearchPanelCircleView$Ripple;
.super Ljava/lang/Object;
.source "SearchPanelCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ripple"
.end annotation


# instance fields
.field alpha:F

.field endRadius:F

.field radius:F

.field final synthetic this$0:Lcom/android/systemui/SearchPanelCircleView;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView;FFF)V
    .locals 0
    .param p2    # F
    .param p3    # F
    .param p4    # F

    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->x:F

    iput p3, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->y:F

    iput p4, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->endRadius:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    # getter for: Lcom/android/systemui/SearchPanelCircleView;->mRipplePaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$1500(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->alpha:F

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->x:F

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->y:F

    iget v2, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->radius:F

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    # getter for: Lcom/android/systemui/SearchPanelCircleView;->mRipplePaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/android/systemui/SearchPanelCircleView;->access$1500(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method start()V
    .locals 4

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;-><init>(Lcom/android/systemui/SearchPanelCircleView$Ripple;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/SearchPanelCircleView$Ripple$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelCircleView$Ripple$2;-><init>(Lcom/android/systemui/SearchPanelCircleView$Ripple;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
