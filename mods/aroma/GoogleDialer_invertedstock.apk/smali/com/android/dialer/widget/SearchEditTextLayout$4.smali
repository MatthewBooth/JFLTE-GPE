.class Lcom/android/dialer/widget/SearchEditTextLayout$4;
.super Ljava/lang/Object;
.source "SearchEditTextLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/widget/SearchEditTextLayout;->prepareAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/widget/SearchEditTextLayout;


# direct methods
.method constructor <init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/widget/SearchEditTextLayout$4;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/dialer/widget/SearchEditTextLayout$4;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    # invokes: Lcom/android/dialer/widget/SearchEditTextLayout;->setMargins(F)V
    invoke-static {v1, v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->access$200(Lcom/android/dialer/widget/SearchEditTextLayout;F)V

    return-void
.end method
