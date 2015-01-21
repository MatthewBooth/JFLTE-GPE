.class final Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactBrowserActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactBrowserActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidSelection()V
    .locals 4

    const/4 v3, -0x6

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v2, v3, :cond_0

    const/4 v2, -0x2

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/common/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    return-void

    :cond_0
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    goto :goto_0
.end method

.method public onSelectionChange()V
    .locals 0

    return-void
.end method

.method public onViewContactAction(Landroid/net/Uri;)V
    .locals 5
    .param p1    # Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Rect;

    const/4 v4, 0x4

    invoke-static {v3, v1, p1, v4, v2}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
