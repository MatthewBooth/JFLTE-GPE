.class Lcom/android/systemui/recent/RecentsVerticalScrollView$6;
.super Ljava/lang/Object;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsVerticalScrollView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    # getter for: Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->access$200(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    iget v3, v3, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLastScrollPosition:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollTo(II)V

    :cond_1
    return-void
.end method
