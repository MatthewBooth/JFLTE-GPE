.class public Lcom/android/dialer/list/SmartDialNumberListAdapter;
.super Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
.source "SmartDialNumberListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    const-string v1, ""

    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)V

    iput-object v0, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    return-void
.end method


# virtual methods
.method public configureLoader(Lcom/android/dialer/dialpad/SmartDialCursorLoader;)V
    .locals 2
    .param p1    # Lcom/android/dialer/dialpad/SmartDialCursorLoader;

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->configureQuery(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->setQuery(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->configureQuery(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->setQuery(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 5
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Cursor was null in getDataUri() call. Returning null instead."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setHighlight(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # Landroid/database/Cursor;

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->clearHighlightSequences()V

    iget-object v4, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    const/4 v5, 0x7

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    invoke-virtual {v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->getMatchPositions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    iget v4, v1, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    iget v5, v1, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    invoke-virtual {p1, v4, v5}, Lcom/android/contacts/common/list/ContactListItemView;->addNameHighlightSequence(II)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, v3, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    iget v5, v3, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    invoke-virtual {p1, v4, v5}, Lcom/android/contacts/common/list/ContactListItemView;->addNumberHighlightSequence(II)V

    :cond_1
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)Z

    move-result v4

    or-int/2addr v0, v4

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {p0, v4, v2}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->notifyDataSetChanged()V

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
