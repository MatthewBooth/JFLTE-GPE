.class public Lcom/android/contacts/common/util/AccountFilterUtil;
.super Ljava/lang/Object;
.source "AccountFilterUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/util/AccountFilterUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V
    .locals 3
    .param p0    # Lcom/android/contacts/common/list/ContactListFilterController;
    .param p1    # I
    .param p2    # Landroid/content/Intent;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string v1, "contactListFilter"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    goto :goto_0
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/common/list/ContactListFilter;)V
    .locals 4
    .param p0    # Landroid/app/Fragment;
    .param p1    # I
    .param p2    # Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/list/AccountFilterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "currentFilter"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v3, "getActivity() returned null. Ignored"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z
    .locals 9
    .param p0    # Landroid/view/View;
    .param p1    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2    # Z
    .param p3    # Z

    const v8, 0x7f0800e1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, -0x3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0e0042

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    if-eqz p3, :cond_4

    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v5, :cond_1

    if-eqz p2, :cond_0

    const v3, 0x7f08009a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v4, :cond_3

    const v3, 0x7f0800e2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" isn\'t expected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v5, :cond_5

    if-eqz p2, :cond_0

    const v3, 0x7f0800d4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_6

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v4, :cond_7

    const v3, 0x7f0800e2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_8

    const v3, 0x7f0800e3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_8
    sget-object v3, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" isn\'t expected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    sget-object v3, Lcom/android/contacts/common/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v4, "Filter is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z
    .locals 1
    .param p0    # Landroid/view/View;
    .param p1    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2    # Z

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method
