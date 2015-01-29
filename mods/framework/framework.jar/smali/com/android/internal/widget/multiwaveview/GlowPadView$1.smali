.class Lcom/android/internal/widget/multiwaveview/GlowPadView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$1;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$1;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$1;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    # getter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$100(Lcom/android/internal/widget/multiwaveview/GlowPadView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$1;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    # getter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$200(Lcom/android/internal/widget/multiwaveview/GlowPadView;)F

    move-result v3

    # invokes: Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$300(Lcom/android/internal/widget/multiwaveview/GlowPadView;IFF)V

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$1;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    # invokes: Lcom/android/internal/widget/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$400(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    return-void
.end method
