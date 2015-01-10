.class Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;
.super Ljava/lang/Object;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    # getter for: Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->access$000(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Lcom/android/systemui/recent/RecentsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/recent/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    return-void
.end method
