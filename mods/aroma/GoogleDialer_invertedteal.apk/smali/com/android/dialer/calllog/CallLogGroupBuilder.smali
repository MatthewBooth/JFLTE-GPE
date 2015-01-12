.class public Lcom/android/dialer/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# static fields
.field private static final TIME:Landroid/text/format/Time;


# instance fields
.field private final mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->TIME:Landroid/text/format/Time;

    return-void
.end method

.method public constructor <init>(Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;)V
    .locals 0
    .param p1    # Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    return-void
.end method

.method private addGroup(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(IIZ)V

    return-void
.end method

.method private getDayGroup(JJ)I
    .locals 3
    .param p1    # J
    .param p3    # J

    const/4 v1, 0x1

    sget-object v2, Lcom/android/dialer/calllog/CallLogGroupBuilder;->TIME:Landroid/text/format/Time;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/contacts/common/util/DateUtils;->getDayDifference(Landroid/text/format/Time;JJ)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;)V
    .locals 31
    .param p1    # Landroid/database/Cursor;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->clearDayGroups()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v11, 0x1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v30, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v30, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v30, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v30, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->getDayGroup(JJ)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v24

    invoke-interface {v0, v1, v2, v10}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->setDayGroup(JI)V

    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v30

    if-eqz v30, :cond_9

    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v30, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v30, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v30, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    invoke-static {v13, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v26

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v27

    if-eqz v26, :cond_3

    if-eqz v27, :cond_3

    const/16 v23, 0x1

    :goto_2
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v30, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    if-eqz v28, :cond_2

    if-nez v23, :cond_4

    :cond_2
    const/16 v29, 0x0

    :goto_3
    if-eqz v29, :cond_7

    add-int/lit8 v11, v11, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v8, v9, v10}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->setDayGroup(JI)V

    goto :goto_1

    :cond_3
    const/16 v23, 0x0

    goto :goto_2

    :cond_4
    const/16 v30, 0x4

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    const/16 v29, 0x0

    goto :goto_3

    :cond_5
    const/16 v30, 0x4

    move/from16 v0, v30

    if-eq v4, v0, :cond_6

    const/16 v29, 0x1

    :goto_5
    goto :goto_3

    :cond_6
    const/16 v29, 0x0

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->getDayGroup(JJ)I

    move-result v10

    const/16 v30, 0x1

    move/from16 v0, v30

    if-le v11, v0, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v30

    sub-int v30, v30, v11

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->addGroup(II)V

    :cond_8
    const/4 v11, 0x1

    move-object/from16 v22, v12

    move/from16 v19, v4

    move-object v13, v6

    move-object/from16 v18, v7

    goto :goto_4

    :cond_9
    const/16 v30, 0x1

    move/from16 v0, v30

    if-le v11, v0, :cond_0

    sub-int v30, v5, v11

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->addGroup(II)V

    goto/16 :goto_0
.end method

.method compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/16 v9, 0x40

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    if-ne p1, p2, :cond_2

    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v8, :cond_5

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v8, :cond_6

    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_4
    move v6, v7

    goto :goto_0

    :cond_5
    move-object v4, p1

    const-string v2, ""

    goto :goto_1

    :cond_6
    move-object v5, p2

    const-string v3, ""

    goto :goto_2
.end method

.method equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
