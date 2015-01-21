.class public Lcom/android/contacts/common/model/dataitem/ImDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "ImDataItem.java"


# instance fields
.field private final mCreatedFromEmail:Z


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 1
    .param p1    # Landroid/content/ContentValues;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    return-void
.end method


# virtual methods
.method public getCustomProtocol()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data6"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/common/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocol()Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data5"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isProtocolValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z
    .locals 5
    .param p1    # Lcom/android/contacts/common/model/dataitem/DataItem;
    .param p2    # Landroid/content/Context;

    const/4 v4, -0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/ImDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v3

    if-ne v2, v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/content/Context;

    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
