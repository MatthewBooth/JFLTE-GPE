.class public Lcom/android/phone/PhoneSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "PhoneSearchIndexablesProvider.java"


# static fields
.field private static INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    new-array v0, v6, [Landroid/provider/SearchIndexableResource;

    const/4 v1, 0x0

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const v3, 0x7f060010

    const-class v4, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030001

    invoke-direct {v2, v6, v3, v4, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1    # [Ljava/lang/String;

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1    # [Ljava/lang/String;

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1    # [Ljava/lang/String;

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    array-length v0, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v4, 0x7

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "android.intent.action.MAIN"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "com.android.phone"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
