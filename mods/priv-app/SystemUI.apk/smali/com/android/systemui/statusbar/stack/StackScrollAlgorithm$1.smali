.class Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildMaxSizeToMaxHeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    # getter for: Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->access$000(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    # getter for: Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->access$000(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v2

    # invokes: Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->access$200(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/View;)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->access$102(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;I)I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->access$102(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;I)I

    goto :goto_0
.end method
