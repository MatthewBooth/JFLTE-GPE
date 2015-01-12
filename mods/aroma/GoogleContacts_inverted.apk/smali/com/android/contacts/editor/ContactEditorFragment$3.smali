.class Lcom/android/contacts/editor/ContactEditorFragment$3;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field final synthetic val$currentState:Lcom/android/contacts/common/model/RawContactDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/view/View;Lcom/android/contacts/common/model/RawContactDelta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$anchorView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentState:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    new-instance v1, Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$anchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$anchorView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    new-instance v2, Lcom/android/contacts/editor/ContactEditorFragment$3$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$3$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$3;Landroid/widget/ListPopupWindow;Lcom/android/contacts/common/util/AccountsListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
