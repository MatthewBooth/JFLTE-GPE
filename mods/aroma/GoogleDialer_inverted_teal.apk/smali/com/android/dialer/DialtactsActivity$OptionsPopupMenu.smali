.class Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;
.super Landroid/widget/PopupMenu;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsPopupMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/DialtactsActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    const v0, 0x800005

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0e0130

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;
    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->access$100(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/ListsFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;
    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->access$100(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/ListsFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/list/ListsFragment;->getSpeedDialFragment()Lcom/android/dialer/list/SpeedDialFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;
    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->access$100(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/ListsFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/list/ListsFragment;->getSpeedDialFragment()Lcom/android/dialer/list/SpeedDialFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/list/SpeedDialFragment;->hasFrequents()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
