.class public Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.super Landroid/app/Activity;
.source "ContactEditorAccountsChangedActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountListAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

.field private final mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mAddAccountClickListener:Landroid/view/View$OnClickListener;

.field private mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/common/util/AccountsListAdapter;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
    .param p1    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method private saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p2, p3}, Lcom/android/contacts/editor/ContactEditorUtils;->getCreatedAccount(ILandroid/content/Intent;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;

    const v13, 0x7f0b01c7

    const v12, 0x7f04000d

    const/4 v11, 0x0

    const v10, 0x7f0e003d

    const/4 v9, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gez v5, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Cannot have a negative number of accounts"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v8, 0x2

    if-lt v5, v8, :cond_1

    const v8, 0x7f04000c

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    invoke-virtual {p0, v10}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b01c2

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0e003f

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0e003e

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v8, Lcom/android/contacts/common/util/AccountsListAdapter;

    sget-object v9, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    invoke-direct {v8, p0, v9}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)V

    iput-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_0
    return-void

    :cond_1
    if-ne v5, v9, :cond_2

    invoke-virtual {p0, v12}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    invoke-virtual {p0, v10}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0e0040

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v8, 0x7f0e0041

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const v8, 0x7f0b01c1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x104000a

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;

    invoke-direct {v8, p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v12}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    invoke-virtual {p0, v10}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0e0040

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v8, 0x7f0e0041

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v8, 0x7f0b01c0

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0b01c5

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;

    invoke-direct {v8, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0b01c6

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
