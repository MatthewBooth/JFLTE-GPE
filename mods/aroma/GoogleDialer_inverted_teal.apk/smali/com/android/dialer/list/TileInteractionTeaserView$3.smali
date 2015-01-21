.class Lcom/android/dialer/list/TileInteractionTeaserView$3;
.super Ljava/lang/Object;
.source "TileInteractionTeaserView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/android/dialer/list/TileInteractionTeaserView$3;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1    # Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/dialer/list/TileInteractionTeaserView$3;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/dialer/list/TileInteractionTeaserView;->mAnimatedHeight:I
    invoke-static {v1, v0}, Lcom/android/dialer/list/TileInteractionTeaserView;->access$302(Lcom/android/dialer/list/TileInteractionTeaserView;I)I

    iget-object v0, p0, Lcom/android/dialer/list/TileInteractionTeaserView$3;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    invoke-virtual {v0}, Lcom/android/dialer/list/TileInteractionTeaserView;->requestLayout()V

    return-void
.end method
