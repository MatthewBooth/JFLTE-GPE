.class Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;
.super Ljava/lang/Object;
.source "ContactEditorAccountsChangedActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$000(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/common/util/AccountsListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$000(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/common/util/AccountsListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/contacts/common/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    # invokes: Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method
