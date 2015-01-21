.class public Lcom/android/contacts/list/ContactsUnavailableFragment;
.super Landroid/app/Fragment;
.source "ContactsUnavailableFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAddAccountButton:Landroid/widget/Button;

.field private mCreateContactButton:Landroid/widget/Button;

.field private mImportContactsButton:Landroid/widget/Button;

.field private mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

.field private mMessageView:Landroid/widget/TextView;

.field private mNSecNoContactsMsgResId:I

.field private mNoContactsMsgResId:I

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mRetryUpgradeButton:Landroid/widget/Button;

.field private mSecondaryMessageView:Landroid/widget/TextView;

.field private mUninstallAppsButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    iput v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onAddAccountAction()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onCreateNewContactAction()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onImportContactsFromFileAction()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onFreeInternalStorageAction()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->retryUpgrade(Landroid/content/Context;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e003f -> :sswitch_0
        0x7f0e005b -> :sswitch_1
        0x7f0e005c -> :sswitch_2
        0x7f0e005d -> :sswitch_3
        0x7f0e005e -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v0, 0x7f04001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setMessageText(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    const/16 v1, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    iput p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    iput p2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v0, v5, :cond_0

    if-eq p1, v2, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eq p2, v2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    return-void
.end method

.method public updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V
    .locals 7
    .param p1    # Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f0b0189

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    iget v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f0b0188

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b018a

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->data:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
