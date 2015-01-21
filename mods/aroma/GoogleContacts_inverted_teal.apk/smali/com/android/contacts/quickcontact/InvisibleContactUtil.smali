.class public Lcom/android/contacts/quickcontact/InvisibleContactUtil;
.super Ljava/lang/Object;
.source "InvisibleContactUtil.java"


# direct methods
.method public static addToDefaultGroup(Lcom/android/contacts/common/model/Contact;Landroid/content/Context;)V
    .locals 18
    .param p0    # Lcom/android/contacts/common/model/Contact;
    .param p1    # Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->getDefaultGroupId(Ljava/util/List;)J

    move-result-wide v12

    const-wide/16 v4, -0x1

    cmp-long v2, v12, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-static/range {p1 .. p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v17

    const-string v2, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11, v12, v13}, Lcom/android/contacts/common/model/ValuesDelta;->setGroupRowId(J)V

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-class v7, Lcom/android/contacts/quickcontact/QuickContactActivity;

    const-string v8, "android.intent.action.VIEW"

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static getDefaultGroupId(Ljava/util/List;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v4, -0x1

    const-wide/16 v0, -0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/GroupMetaData;

    invoke-virtual {v2}, Lcom/android/contacts/common/GroupMetaData;->isDefaultGroup()Z

    move-result v6

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    move-wide v0, v4

    :cond_1
    return-wide v0

    :cond_2
    invoke-virtual {v2}, Lcom/android/contacts/common/GroupMetaData;->getGroupId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static isInvisibleAndAddable(Lcom/android/contacts/common/model/Contact;Landroid/content/Context;)Z
    .locals 14
    .param p0    # Lcom/android/contacts/common/model/Contact;
    .param p1    # Landroid/content/Context;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    :goto_0
    return v11

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v12

    if-ne v12, v10, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->getDefaultGroupId(Ljava/util/List;)J

    move-result-wide v2

    const-wide/16 v12, -0x1

    cmp-long v12, v2, v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v8, p1}, Lcom/android/contacts/common/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v8}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v12

    const-class v13, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;

    invoke-static {v12, v13}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    move-object v4, v0

    check-cast v4, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;->getGroupRowId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v2

    if-nez v12, :cond_2

    const/4 v7, 0x1

    :cond_3
    if-nez v7, :cond_4

    :goto_1
    move v11, v10

    goto :goto_0

    :cond_4
    move v10, v11

    goto :goto_1
.end method
