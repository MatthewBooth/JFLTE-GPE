.class Lcom/android/dialer/widget/SearchEditTextLayout$2;
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

    iput-object p1, p0, Lcom/android/dialer/widget/SearchEditTextLayout$2;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout$2;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    # getter for: Lcom/android/dialer/widget/SearchEditTextLayout;->mSearchView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->access$000(Lcom/android/dialer/widget/SearchEditTextLayout;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
