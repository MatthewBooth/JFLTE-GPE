.class Lcom/android/dialer/list/TileInteractionTeaserView$2;
.super Ljava/lang/Object;
.source "TileInteractionTeaserView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/TileInteractionTeaserView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

.field final synthetic val$arrow:Landroid/widget/ImageView;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/TileInteractionTeaserView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    iput-object p2, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->val$text:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->val$arrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->val$text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    # getter for: Lcom/android/dialer/list/TileInteractionTeaserView;->mNeedLayout:Z
    invoke-static {v3}, Lcom/android/dialer/list/TileInteractionTeaserView;->access$100(Lcom/android/dialer/list/TileInteractionTeaserView;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    # getter for: Lcom/android/dialer/list/TileInteractionTeaserView;->mTextTop:I
    invoke-static {v3}, Lcom/android/dialer/list/TileInteractionTeaserView;->access$200(Lcom/android/dialer/list/TileInteractionTeaserView;)I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    # setter for: Lcom/android/dialer/list/TileInteractionTeaserView;->mNeedLayout:Z
    invoke-static {v3, v5}, Lcom/android/dialer/list/TileInteractionTeaserView;->access$102(Lcom/android/dialer/list/TileInteractionTeaserView;Z)Z

    iget-object v3, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    # setter for: Lcom/android/dialer/list/TileInteractionTeaserView;->mTextTop:I
    invoke-static {v3, v2}, Lcom/android/dialer/list/TileInteractionTeaserView;->access$202(Lcom/android/dialer/list/TileInteractionTeaserView;I)I

    iget-object v3, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->val$text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    iget-object v3, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->val$arrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->this$0:Lcom/android/dialer/list/TileInteractionTeaserView;

    # getter for: Lcom/android/dialer/list/TileInteractionTeaserView;->mTextTop:I
    invoke-static {v3}, Lcom/android/dialer/list/TileInteractionTeaserView;->access$200(Lcom/android/dialer/list/TileInteractionTeaserView;)I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->val$arrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/android/dialer/list/TileInteractionTeaserView$2;->val$arrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
