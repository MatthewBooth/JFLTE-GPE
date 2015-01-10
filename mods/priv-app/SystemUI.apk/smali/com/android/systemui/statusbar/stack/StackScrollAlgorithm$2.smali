.class Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->notifyChildrenChanged(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field final synthetic val$hostView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;->val$hostView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;->val$hostView:Landroid/view/ViewGroup;

    # invokes: Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->access$300(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/ViewGroup;)V

    return-void
.end method
