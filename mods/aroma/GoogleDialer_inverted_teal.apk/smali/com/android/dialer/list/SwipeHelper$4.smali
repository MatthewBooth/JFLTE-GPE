.class Lcom/android/dialer/list/SwipeHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/SwipeHelper;->snapChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/SwipeHelper;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/SwipeHelper$4;->this$0:Lcom/android/dialer/list/SwipeHelper;

    iput-object p2, p0, Lcom/android/dialer/list/SwipeHelper$4;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/dialer/list/SwipeHelper$4;->val$animView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/list/SwipeHelper$4;->this$0:Lcom/android/dialer/list/SwipeHelper;

    # getter for: Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F
    invoke-static {v1}, Lcom/android/dialer/list/SwipeHelper;->access$200(Lcom/android/dialer/list/SwipeHelper;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/dialer/list/SwipeHelper$4;->this$0:Lcom/android/dialer/list/SwipeHelper;

    # getter for: Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;
    invoke-static {v0}, Lcom/android/dialer/list/SwipeHelper;->access$000(Lcom/android/dialer/list/SwipeHelper;)Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/SwipeHelper$4;->this$0:Lcom/android/dialer/list/SwipeHelper;

    # getter for: Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/dialer/list/SwipeHelper;->access$300(Lcom/android/dialer/list/SwipeHelper;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->onDragCancelled(Landroid/view/View;)V

    return-void
.end method
