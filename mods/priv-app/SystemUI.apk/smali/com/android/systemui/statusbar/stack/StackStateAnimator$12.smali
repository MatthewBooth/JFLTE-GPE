.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$isRubberbanded:Z

.field final synthetic val$onTop:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->val$onTop:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->val$isRubberbanded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1    # Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->val$onTop:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->val$isRubberbanded:Z

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    return-void
.end method
