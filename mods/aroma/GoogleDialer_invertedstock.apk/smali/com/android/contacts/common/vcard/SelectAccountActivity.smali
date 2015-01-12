.class public Lcom/android/contacts/common/vcard/SelectAccountActivity;
.super Landroid/app/Activity;
.source "SelectAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;
    }
.end annotation


# instance fields
.field private mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const v8, 0x7f0800e7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f0800e7

    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SelectAccountActivity"

    const-string v6, "Account does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "account_name"

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "account_type"

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "data_set"

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string v5, "SelectAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The number of available accounts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/contacts/common/vcard/SelectAccountActivity$1;

    invoke-direct {v5, p0, p0, v1, v8}, Lcom/android/contacts/common/vcard/SelectAccountActivity$1;-><init>(Lcom/android/contacts/common/vcard/SelectAccountActivity;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v5, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mAccountSelectionListener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    new-instance v1, Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/SelectAccountActivity;Lcom/android/contacts/common/vcard/SelectAccountActivity$1;)V

    invoke-static {p0, p1, v0, v1}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800e7
        :pswitch_0
    .end packed-switch
.end method
