.class Lcom/android/dialer/calllog/CallLogFragment$4$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment$4;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

.field final synthetic val$isExpand:Z


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment$4;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$4$2;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iput-boolean p2, p0, Lcom/android/dialer/calllog/CallLogFragment$4$2;->val$isExpand:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4$2;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$view:Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogListItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4$2;->val$isExpand:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4$2;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4$2;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4$2;->val$isExpand:Z

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->expandVoicemailTranscriptionView(Lcom/android/dialer/calllog/CallLogListItemViews;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4$2;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
