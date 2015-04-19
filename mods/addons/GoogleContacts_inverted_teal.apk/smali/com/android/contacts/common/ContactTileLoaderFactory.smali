.class public final Lcom/android/contacts/common/ContactTileLoaderFactory;
.super Ljava/lang/Object;
.source "ContactTileLoaderFactory.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field public static final COLUMNS_PHONE_ONLY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_uri"

    aput-object v1, v0, v6

    const-string v1, "lookup"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v5

    const-string v1, "photo_uri"

    aput-object v1, v0, v6

    const-string v1, "lookup"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pinned"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS_PHONE_ONLY:[Ljava/lang/String;

    return-void
.end method

.method public static createFrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p0    # Landroid/content/Context;

    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_FREQUENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    const-string v4, "starred=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "0"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createStarredLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p0    # Landroid/content/Context;

    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    const-string v4, "starred=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "display_name COLLATE NOCASE ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createStrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    const-string v6, "display_name COLLATE NOCASE ASC"

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
