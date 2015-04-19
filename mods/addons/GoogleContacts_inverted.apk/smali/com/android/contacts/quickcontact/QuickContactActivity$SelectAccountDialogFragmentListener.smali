.class public Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;
.super Landroid/app/Fragment;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectAccountDialogFragmentListener"
.end annotation


# instance fields
.field private mQuickContactActivity:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;->mQuickContactActivity:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;->mQuickContactActivity:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0, p1, v1}, Lcom/android/contacts/quickcontact/DirectoryContactUtil;->createCopy(Ljava/util/ArrayList;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/Context;)V

    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    return-void
.end method

.method public setQuickContactActivity(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p1    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;->mQuickContactActivity:Lcom/android/contacts/quickcontact/QuickContactActivity;

    return-void
.end method
