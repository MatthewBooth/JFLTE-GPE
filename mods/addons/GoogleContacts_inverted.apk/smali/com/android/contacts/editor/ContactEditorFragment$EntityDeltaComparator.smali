.class Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityDeltaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/common/model/RawContactDelta;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p2    # Lcom/android/contacts/editor/ContactEditorFragment$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;)I
    .locals 22
    .param p1    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2    # Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual/range {p1 .. p2}, Lcom/android/contacts/common/model/RawContactDelta;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v16, 0x0

    :cond_0
    :goto_0
    return v16

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v17

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v17

    const-string v18, "data_set"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v17

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v17

    const-string v18, "data_set"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v15

    invoke-virtual {v14}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v15}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v14}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v15}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-nez v17, :cond_3

    const/16 v16, -0x1

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    instance-of v7, v14, Lcom/android/contacts/common/model/account/GoogleAccountType;

    instance-of v8, v15, Lcom/android/contacts/common/model/account/GoogleAccountType;

    if-eqz v7, :cond_4

    if-nez v8, :cond_4

    const/16 v16, -0x1

    goto :goto_0

    :cond_4
    if-nez v7, :cond_5

    if-eqz v8, :cond_5

    const/16 v16, 0x1

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    const/4 v11, 0x1

    :cond_6
    if-nez v11, :cond_c

    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    const/16 v16, -0x1

    goto/16 :goto_0

    :cond_7
    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_0

    :cond_9
    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_a

    const/16 v16, -0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_b
    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    iget-object v0, v14, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_0

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_d

    const-string v9, ""

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_e

    const-string v12, ""

    :cond_e
    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v13

    if-nez v10, :cond_f

    const/16 v16, -0x1

    goto/16 :goto_0

    :cond_f
    if-nez v13, :cond_10

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/contacts/common/model/RawContactDelta;

    check-cast p2, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->compare(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;)I

    move-result v0

    return v0
.end method
