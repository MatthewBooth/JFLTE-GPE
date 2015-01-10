.class Lcom/android/systemui/SwipeHelper$3;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canAnimViewBeDismissed:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/SwipeHelper$3;->val$canAnimViewBeDismissed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1    # Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$3;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$3;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper$3;->val$canAnimViewBeDismissed:Z

    # invokes: Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->access$500(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    return-void
.end method
