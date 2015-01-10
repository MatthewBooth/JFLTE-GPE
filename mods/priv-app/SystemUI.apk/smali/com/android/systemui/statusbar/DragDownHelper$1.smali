.class Lcom/android/systemui/statusbar/DragDownHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragDownHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DragDownHelper;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper$1;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    # getter for: Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;
    invoke-static {v0}, Lcom/android/systemui/statusbar/DragDownHelper;->access$000(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper$1;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    return-void
.end method
