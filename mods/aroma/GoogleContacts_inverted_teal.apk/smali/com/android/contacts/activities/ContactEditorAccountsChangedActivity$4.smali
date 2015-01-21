.class Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;
.super Ljava/lang/Object;
.source "ContactEditorAccountsChangedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$200(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    return-void
.end method
