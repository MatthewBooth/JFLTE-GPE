.class public Lcom/android/contacts/activities/GroupDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupDetailActivity.java"


# instance fields
.field private mAccountTypeString:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mFragment:Lcom/android/contacts/group/GroupDetailFragment;

.field private final mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

.field private mShowGroupSourceInActionBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Lcom/android/contacts/activities/GroupDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupDetailActivity$1;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/activities/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/contacts/activities/GroupDetailActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/contacts/activities/GroupDetailActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/android/contacts/group/GroupDetailFragment;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/GroupDetailActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040046

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e00a4

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupDetailFragment;

    iput-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-boolean v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->setShowGroupSourceInActionBar(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->loadGroup(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->closeActivityAfterDelete(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->finish()V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1    # Landroid/view/Menu;

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const v6, 0x7f0e00ef

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->getNewGroupSourceView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    invoke-static {p0, v2, v4, v6}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->bindGroupSourceView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/contacts/activities/GroupDetailActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity$2;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;Lcom/android/contacts/common/model/account/AccountType;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v4, v5

    goto :goto_0
.end method
