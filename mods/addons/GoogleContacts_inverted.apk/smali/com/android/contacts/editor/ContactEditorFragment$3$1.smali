.class Lcom/android/contacts/editor/ContactEditorFragment$3$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

.field final synthetic val$adapter:Lcom/android/contacts/common/util/AccountsListAdapter;

.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$3;Landroid/widget/ListPopupWindow;Lcom/android/contacts/common/util/AccountsListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->val$popup:Landroid/widget/ListPopupWindow;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->val$adapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-static {v1}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->val$adapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/common/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentState:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$500(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    :cond_0
    return-void
.end method
