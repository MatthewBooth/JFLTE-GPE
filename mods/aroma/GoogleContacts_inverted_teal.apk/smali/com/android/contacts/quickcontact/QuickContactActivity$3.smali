.class Lcom/android/contacts/quickcontact/QuickContactActivity$3;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1    # Landroid/view/ContextMenu;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v6, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p3

    check-cast v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v4, 0x7f0b01b2

    invoke-virtual {v3, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v6, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOnePhoneNumber:Z
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->isSuperPrimary()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v5, 0x7f0b01b4

    invoke-virtual {v4, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOneEmail:Z
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v5, 0x7f0b01b3

    invoke-virtual {v4, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method
