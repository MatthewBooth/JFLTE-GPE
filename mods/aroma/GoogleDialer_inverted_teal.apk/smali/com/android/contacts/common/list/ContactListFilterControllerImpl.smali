.class Lcom/android/contacts/common/list/ContactListFilterControllerImpl;
.super Lcom/android/contacts/common/list/ContactListFilterController;
.source "ContactListFilterController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterController;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->checkFilterValidity(Z)V

    return-void
.end method

.method private filterAccountExists()Z
    .locals 5

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->contains(Lcom/android/contacts/common/model/account/AccountWithDataSet;Z)Z

    move-result v2

    return v2
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private notifyContactListFilterChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;

    invoke-interface {v1}, Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;->onContactListFilterChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2    # Z
    .param p3    # Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/common/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->notifyContactListFilterChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public checkFilterValidity(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v0, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->filterAccountExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public selectCustomFilter()V
    .locals 2

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V
    .locals 1
    .param p1    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2    # Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;ZZ)V

    return-void
.end method
