.class public Lcom/android/contacts/common/util/DataStatus;
.super Ljava/lang/Object;
.source "DataStatus.java"


# instance fields
.field private mIconRes:I

.field private mLabelRes:I

.field private mPresence:I

.field private mResPackage:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .param p1    # Landroid/database/Cursor;

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private fromCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1    # Landroid/database/Cursor;

    const/4 v4, -0x1

    const-string v0, "mode"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/android/contacts/common/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    const-string v0, "status_ts"

    const-wide/16 v2, -0x1

    invoke-static {p1, v0, v2, v3}, Lcom/android/contacts/common/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    const-string v0, "status_res_package"

    invoke-static {p1, v0}, Lcom/android/contacts/common/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    const-string v0, "status_icon"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    const-string v0, "status_label"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    return-void
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2
    .param p0    # Landroid/database/Cursor;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 2
    .param p0    # Landroid/database/Cursor;
    .param p1    # Ljava/lang/String;
    .param p2    # J

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/database/Cursor;
    .param p1    # Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
