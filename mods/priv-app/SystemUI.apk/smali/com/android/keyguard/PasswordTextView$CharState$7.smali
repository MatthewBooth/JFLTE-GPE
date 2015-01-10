.class Lcom/android/keyguard/PasswordTextView$CharState$7;
.super Ljava/lang/Object;
.source "PasswordTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/PasswordTextView$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1    # Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->invalidate()V

    return-void
.end method
