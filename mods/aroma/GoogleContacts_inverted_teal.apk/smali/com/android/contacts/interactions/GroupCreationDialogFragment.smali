.class public Lcom/android/contacts/interactions/GroupCreationDialogFragment;
.super Lcom/android/contacts/interactions/GroupNameDialogFragment;
.source "GroupCreationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    return-void
.end method

.method private constructor <init>(Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V
    .locals 3
    .param p0    # Landroid/app/FragmentManager;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    new-instance v1, Lcom/android/contacts/interactions/GroupCreationDialogFragment;

    invoke-direct {v1, p4}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;-><init>(Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "accountType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "accountName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dataSet"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string v2, "createGroupDialog"

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getTitleResourceId()I
    .locals 1

    const v0, 0x7f0b01ae

    return v0
.end method

.method protected initializeGroupLabelEditText(Landroid/widget/EditText;)V
    .locals 0
    .param p1    # Landroid/widget/EditText;

    return-void
.end method

.method protected onCompleted(Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v1, "accountType"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "accountName"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "dataSet"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    invoke-interface {v1}, Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;->onGroupCreated()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v1, v6, v7, v9}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "android.intent.action.EDIT"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
