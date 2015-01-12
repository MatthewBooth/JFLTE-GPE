.class Lcom/android/dialer/list/SwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/SwipeHelper;->dismissChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/SwipeHelper;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/SwipeHelper$1;->this$0:Lcom/android/dialer/list/SwipeHelper;

    iput-object p2, p0, Lcom/android/dialer/list/SwipeHelper$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/dialer/list/SwipeHelper$1;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/dialer/list/SwipeHelper$1;->this$0:Lcom/android/dialer/list/SwipeHelper;

    # getter for: Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;
    invoke-static {v0}, Lcom/android/dialer/list/SwipeHelper;->access$000(Lcom/android/dialer/list/SwipeHelper;)Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/SwipeHelper$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->onChildDismissed(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/dialer/list/SwipeHelper$1;->val$animView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
