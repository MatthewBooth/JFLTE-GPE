.class public Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "GroupMembershipDataItem.java"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1    # Landroid/content/ContentValues;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public getGroupRowId()Ljava/lang/Long;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
