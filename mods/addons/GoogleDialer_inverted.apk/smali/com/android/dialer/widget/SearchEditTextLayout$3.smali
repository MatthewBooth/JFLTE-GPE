.class Lcom/android/dialer/widget/SearchEditTextLayout$3;
.super Ljava/lang/Object;
.source "SearchEditTextLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/widget/SearchEditTextLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/widget/SearchEditTextLayout;


# direct methods
.method constructor <init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/widget/SearchEditTextLayout$3;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout$3;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    # getter for: Lcom/android/dialer/widget/SearchEditTextLayout;->mOnBackButtonClickedListener:Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;
    invoke-static {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->access$100(Lcom/android/dialer/widget/SearchEditTextLayout;)Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout$3;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    # getter for: Lcom/android/dialer/widget/SearchEditTextLayout;->mOnBackButtonClickedListener:Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;
    invoke-static {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->access$100(Lcom/android/dialer/widget/SearchEditTextLayout;)Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/widget/SearchEditTextLayout$OnBackButtonClickedListener;->onBackButtonClicked()V

    :cond_0
    return-void
.end method
