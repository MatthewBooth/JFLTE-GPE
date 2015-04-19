.class Lcom/android/dialer/DialtactsActivity$3;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$1000(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/widget/ActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/widget/ActionBarController;->onSearchBoxTapped()V

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->access$1100(Lcom/android/dialer/DialtactsActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/dialer/DialtactsActivity;->enterSearchUi(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/dialer/DialtactsActivity;->access$700(Lcom/android/dialer/DialtactsActivity;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
