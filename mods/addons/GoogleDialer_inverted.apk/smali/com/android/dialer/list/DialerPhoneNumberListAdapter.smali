.class public Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
.super Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.source "DialerPhoneNumberListAdapter.java"


# instance fields
.field private mCountryIso:Ljava/lang/String;

.field private mFormattedQueryString:Ljava/lang/String;

.field private final mShortcutEnabled:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    invoke-static {p1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 7
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # I

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v1

    packed-switch p2, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid shortcut type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    const v4, 0x7f08025f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0200a3

    :goto_0
    const v4, 0x7f0200eb

    invoke-virtual {p1, v4, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setDrawableResource(II)V

    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoPosition()Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    invoke-virtual {p1, v6}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    return-void

    :pswitch_1
    const v4, 0x7f080260

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0200a2

    goto :goto_0

    :pswitch_2
    const v4, 0x7f080261

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0200bf

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFormattedQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mFormattedQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getShortcutCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getShortcutTypeFromPosition(I)I
    .locals 4
    .param p1    # I

    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCount()I

    move-result v2

    sub-int v1, p1, v2

    if-ltz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid position - greater than cursor count  but not a shortcut."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz p2, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-direct {p0, v2, v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V

    :goto_0
    return-object p2

    :cond_0
    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v1, v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V

    move-object p2, v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mFormattedQueryString:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    return-void
.end method

.method public setShortcutEnabled(IZ)Z
    .locals 2
    .param p1    # I
    .param p2    # Z

    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aget-boolean v1, v1, p1

    if-eq v1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aput-boolean p2, v1, p1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
