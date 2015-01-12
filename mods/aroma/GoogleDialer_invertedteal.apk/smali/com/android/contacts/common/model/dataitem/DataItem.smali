.class public Lcom/android/contacts/common/model/dataitem/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"

# interfaces
.implements Lcom/android/contacts/common/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/common/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/common/model/dataitem/DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentValues:Landroid/content/ContentValues;

.field protected mKind:Lcom/android/contacts/common/model/dataitem/DataKind;


# direct methods
.method protected constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1    # Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public static createFrom(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;
    .locals 2
    .param p0    # Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;-><init>(Landroid/content/ContentValues;)V

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_2
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/contacts/common/model/dataitem/EmailDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_3
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_4
    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_5
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_6
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_7
    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/android/contacts/common/model/dataitem/NoteDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/NoteDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_8
    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_9
    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lcom/android/contacts/common/model/dataitem/RelationDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "vnd.android.cursor.item/identity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/android/contacts/common/model/dataitem/IdentityDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/IdentityDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_e
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    iget-object v3, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {v2, p1, v3}, Lcom/android/contacts/common/model/account/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public collapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;)V
    .locals 9
    .param p1    # Lcom/android/contacts/common/model/dataitem/DataItem;

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->getTypePrecedence(Lcom/android/contacts/common/model/dataitem/DataKind;I)I

    move-result v2

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v6

    invoke-static {v0, v6}, Lcom/android/contacts/common/model/RawContactModifier;->getTypePrecedence(Lcom/android/contacts/common/model/dataitem/DataKind;I)I

    move-result v6

    if-le v2, v6, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    iget-object v6, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget v6, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    iget v7, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v6, "is_super_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v6, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v6, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget-object v6, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v7, "times_used"

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_8

    :goto_1
    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v7, "last_time_used"

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_9

    move-wide v2, v4

    :goto_2
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_a

    :goto_3
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_3
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->collapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;)V

    return-void
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I
    .locals 2
    .param p1    # Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getLastTimeUsed()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "last_time_used"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimesUsed()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "times_used"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 2
    .param p1    # Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "is_primary"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSuperPrimary()Z
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "is_super_primary"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z
    .locals 4
    .param p1    # Lcom/android/contacts/common/model/dataitem/DataItem;
    .param p2    # Landroid/content/Context;

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p2, v1}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/common/MoreContactUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/content/Context;

    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
