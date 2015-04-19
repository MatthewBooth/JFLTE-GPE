.class Lcom/android/dialer/list/TileInteractionTeaserView$4;
.super Ljava/lang/Object;
.source "TileInteractionTeaserView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/TileInteractionTeaserView;->startDestroyAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/TileInteractionTeaserView;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/TileInteractionTeaserView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/TileInteractionTeaserView$4;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/dialer/list/TileInteractionTeaserView$4;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/TileInteractionTeaserView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/dialer/list/TileInteractionTeaserView$4;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    # invokes: Lcom/android/dialer/list/TileInteractionTeaserView;->setDismissed()V
    invoke-static {v0}, Lcom/android/dialer/list/TileInteractionTeaserView;->access$400(Lcom/android/dialer/list/TileInteractionTeaserView;)V

    iget-object v0, p0, Lcom/android/dialer/list/TileInteractionTeaserView$4;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    # getter for: Lcom/android/dialer/list/TileInteractionTeaserView;->mAdapter:Lcom/android/dialer/list/ShortcutCardsAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/TileInteractionTeaserView;->access$500(Lcom/android/dialer/list/TileInteractionTeaserView;)Lcom/android/dialer/list/ShortcutCardsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/TileInteractionTeaserView$4;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    # getter for: Lcom/android/dialer/list/TileInteractionTeaserView;->mAdapter:Lcom/android/dialer/list/ShortcutCardsAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/TileInteractionTeaserView;->access$500(Lcom/android/dialer/list/TileInteractionTeaserView;)Lcom/android/dialer/list/ShortcutCardsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/list/ShortcutCardsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method
