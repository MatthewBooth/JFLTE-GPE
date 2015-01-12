.class public Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;
.super Landroid/widget/Filter;
.source "SuggestedMemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/SuggestedMemberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestedMemberFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 36
    .param p1    # Ljava/lang/CharSequence;

    new-instance v31, Landroid/widget/Filter$FilterResults;

    invoke-direct/range {v31 .. v31}, Landroid/widget/Filter$FilterResults;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$000(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v31

    :cond_1
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const-string v21, "account_name=? AND account_type=?"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mDataSet:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$100(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND data_set IS NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$200(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$300(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v32, v6, v2

    const/4 v2, 0x3

    aput-object v32, v6, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$000(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->PROJECTION_FILTERED_MEMBERS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$400()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " AND ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "display_name"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " LIKE ? OR "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "display_name_alt"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " LIKE ? )"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    if-eqz v23, :cond_0

    const/4 v2, -0x1

    :try_start_0
    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    :goto_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;
    invoke-static {v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$500(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v8, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-direct/range {v8 .. v14}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;-><init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;JLjava/lang/String;J)V

    move-object/from16 v0, v34

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND data_set=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$200(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$300(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mDataSet:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$100(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    aput-object v32, v6, v2

    const/4 v2, 0x4

    aput-object v32, v6, v2

    goto/16 :goto_1

    :cond_4
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v28

    if-eqz v28, :cond_0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v2, "?"

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "_id IN ("

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$000(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->PROJECTION_MEMBER_DATA:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$600()[Ljava/lang/String;

    move-result-object v17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(mimetype=? OR mimetype=? OR mimetype=?) AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    if-eqz v26, :cond_a

    const/4 v2, -0x1

    :try_start_1
    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_6
    :goto_4
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    if-eqz v8, :cond_6

    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setPhotoByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_7
    :try_start_2
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_8
    invoke-virtual {v8}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->hasExtraInfo()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setExtraInfo(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :cond_9
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Landroid/widget/Filter$FilterResults;

    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    iget-object v3, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
