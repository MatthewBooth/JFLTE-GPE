.class Lcom/android/systemui/SwipeHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V
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

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$5;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$5;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/SwipeHelper$5;->val$canAnimViewBeDismissed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$5;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$5;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper$5;->val$canAnimViewBeDismissed:Z

    # invokes: Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->access$500(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$5;->this$0:Lcom/android/systemui/SwipeHelper;

    # getter for: Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;
    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->access$400(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$5;->val$animView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->onChildSnappedBack(Landroid/view/View;)V

    return-void
.end method
