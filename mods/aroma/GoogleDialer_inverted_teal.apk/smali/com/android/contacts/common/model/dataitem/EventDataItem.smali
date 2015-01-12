.class public Lcom/android/contacts/common/model/dataitem/EventDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "EventDataItem.java"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1    # Landroid/content/ContentValues;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z
    .locals 4
    .param p1    # Lcom/android/contacts/common/model/dataitem/DataItem;
    .param p2    # Landroid/content/Context;

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/EventDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getStartDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/EventDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/EventDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/content/Context;

    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
