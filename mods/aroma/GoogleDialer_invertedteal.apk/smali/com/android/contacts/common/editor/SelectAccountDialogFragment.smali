.class public final Lcom/android/contacts/common/editor/SelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p0    # Lcom/android/contacts/common/editor/SelectAccountDialogFragment;
    .param p1    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method private onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 4
    .param p1    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_args"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;->onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V
    .locals 3
    .param p0    # Landroid/app/FragmentManager;
    .param p2    # I
    .param p3    # Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    .param p4    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;I",
            "Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title_res_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "list_filter"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "extra_args"

    if-nez p4, :cond_0

    sget-object p4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1    # Landroid/os/Bundle;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "list_filter"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)V

    new-instance v3, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;-><init>(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/util/AccountsListAdapter;)V

    const-string v6, "title_res_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
