.class final Lcom/android/phone/common/animation/AnimUtils$5;
.super Ljava/lang/Object;
.source "AnimUtils.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/common/animation/AnimUtils;->changeDimensions(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deltaHeight:I

.field final synthetic val$deltaWidth:I

.field final synthetic val$oldHeight:I

.field final synthetic val$oldWidth:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$deltaWidth:I

    iput p3, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$oldWidth:I

    iput p4, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$deltaHeight:I

    iput p5, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$oldHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$deltaWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$oldWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$deltaHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$oldHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/phone/common/animation/AnimUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
