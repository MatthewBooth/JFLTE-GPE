.class Lcom/android/systemui/qs/QSFooter$1;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter$1;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$1;->this$0:Lcom/android/systemui/qs/QSFooter;

    # getter for: Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I
    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->access$200(Lcom/android/systemui/qs/QSFooter;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$1;->this$0:Lcom/android/systemui/qs/QSFooter;

    # getter for: Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->access$300(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter$1;->this$0:Lcom/android/systemui/qs/QSFooter;

    # getter for: Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I
    invoke-static {v2}, Lcom/android/systemui/qs/QSFooter;->access$200(Lcom/android/systemui/qs/QSFooter;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$1;->this$0:Lcom/android/systemui/qs/QSFooter;

    # getter for: Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->access$500(Lcom/android/systemui/qs/QSFooter;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$1;->this$0:Lcom/android/systemui/qs/QSFooter;

    # getter for: Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z
    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->access$400(Lcom/android/systemui/qs/QSFooter;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$1;->this$0:Lcom/android/systemui/qs/QSFooter;

    # getter for: Lcom/android/systemui/qs/QSFooter;->mFooterIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->access$700(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter$1;->this$0:Lcom/android/systemui/qs/QSFooter;

    # getter for: Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z
    invoke-static {v2}, Lcom/android/systemui/qs/QSFooter;->access$600(Lcom/android/systemui/qs/QSFooter;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method
