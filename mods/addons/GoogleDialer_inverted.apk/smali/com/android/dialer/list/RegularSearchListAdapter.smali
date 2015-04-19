.class public Lcom/android/dialer/list/RegularSearchListAdapter;
.super Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
.source "RegularSearchListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getContactInfo(Lcom/android/dialer/service/CachedNumberLookupService;I)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    .locals 10
    .param p1    # Lcom/android/dialer/service/CachedNumberLookupService;
    .param p2    # I

    new-instance v1, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v1}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    invoke-interface {p1, v1}, Lcom/android/dialer/service/CachedNumberLookupService;->buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/dialer/list/RegularSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_0

    const/4 v9, 0x7

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v1, Lcom/android/dialer/calllog/ContactInfo;->type:I

    const/4 v9, 0x2

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    const/4 v9, 0x3

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    const/16 v9, 0x8

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v9, 0x0

    :goto_0
    iput-object v9, v1, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    const/4 v9, 0x5

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setLookupKey(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/dialer/list/RegularSearchListAdapter;->getPartitionForPosition(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/dialer/list/RegularSearchListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v2, v3}, Lcom/android/dialer/list/RegularSearchListAdapter;->isExtendedDirectory(J)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0, v8, v2, v3}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setExtendedSource(Ljava/lang/String;J)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    :cond_2
    invoke-interface {v0, v8, v2, v3}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setDirectorySource(Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {p0, v2, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)Z

    move-result v4

    or-int/2addr v0, v4

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {p0, v4, v2}, Lcom/android/dialer/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
