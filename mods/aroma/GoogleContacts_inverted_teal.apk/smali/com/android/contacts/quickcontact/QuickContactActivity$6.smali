.class Lcom/android/contacts/quickcontact/QuickContactActivity$6;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/common/model/dataitem/DataItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$6;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;->compare(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/List;Ljava/util/List;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;)I"
        }
    .end annotation

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataItem;

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v17

    if-nez v17, :cond_0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v17

    if-nez v17, :cond_1

    const/4 v15, 0x0

    :goto_1
    sub-int v16, v15, v9

    if-eqz v16, :cond_2

    :goto_2
    return v16

    :cond_0
    invoke-virtual {v3}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v17

    if-nez v17, :cond_3

    const-wide/16 v6, 0x0

    :goto_3
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v17

    if-nez v17, :cond_4

    const-wide/16 v12, 0x0

    :goto_4
    sub-long v4, v12, v6

    const-wide/16 v18, 0x0

    cmp-long v17, v4, v18

    if-lez v17, :cond_5

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_3

    :cond_4
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_4

    :cond_5
    const-wide/16 v18, 0x0

    cmp-long v17, v4, v18

    if-gez v17, :cond_6

    const/16 v16, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v14

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1100()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v16, -0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v16, 0x1

    goto :goto_2

    :cond_9
    const/16 v16, 0x0

    goto :goto_2
.end method
