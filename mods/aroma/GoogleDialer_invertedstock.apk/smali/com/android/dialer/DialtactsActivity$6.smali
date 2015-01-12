.class Lcom/android/dialer/DialtactsActivity$6;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/DialtactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;

.field final synthetic val$floatingActionButtonContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    iput-object p2, p0, Lcom/android/dialer/DialtactsActivity$6;->val$floatingActionButtonContainer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$6;->val$floatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->access$1400(Lcom/android/dialer/DialtactsActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;
    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->access$1500(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/widget/FloatingActionButtonController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setScreenWidth(I)V

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    const/4 v3, 0x0

    # invokes: Lcom/android/dialer/DialtactsActivity;->updateFloatingActionButtonControllerAlignment(Z)V
    invoke-static {v2, v3}, Lcom/android/dialer/DialtactsActivity;->access$1600(Lcom/android/dialer/DialtactsActivity;Z)V

    goto :goto_0
.end method
