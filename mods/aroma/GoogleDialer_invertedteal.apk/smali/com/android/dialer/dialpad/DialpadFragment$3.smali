.class Lcom/android/dialer/dialpad/DialpadFragment$3;
.super Landroid/widget/PopupMenu;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment;->buildOptionsMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0, p2, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$3;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0e012d

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mSmsPackageComponentName:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/android/dialer/dialpad/DialpadFragment;->access$400(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z
    invoke-static {v4}, Lcom/android/dialer/dialpad/DialpadFragment;->access$200(Lcom/android/dialer/dialpad/DialpadFragment;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v5

    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {v2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
