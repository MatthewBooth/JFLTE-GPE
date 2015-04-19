.class public Lcom/android/contacts/common/list/ContactTileAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileAdapter$1;,
        Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;,
        Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mColumnCount:I

.field protected mContactCursor:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;

.field private mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

.field private mDividerPosition:I

.field protected mIdIndex:I

.field private mIsQuickContactEnabled:Z

.field private mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field protected mLookupIndex:I

.field protected mNameIndex:I

.field protected mNumFrequents:I

.field private final mPaddingInPixels:I

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected mPhotoUriIndex:I

.field protected mPresenceIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mStarredIndex:I

.field protected mStatusIndex:I

.field private final mWhitespaceStartEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;ILcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/contacts/common/list/ContactTileView$Listener;
    .param p3    # I
    .param p4    # Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    iput-object p2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-ne p4, v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput p3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    iput-object p4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    iput v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mWhitespaceStartEnd:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->bindColumnIndices()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ContactTileAdapter;I)I
    .locals 1
    .param p0    # Lcom/android/contacts/common/list/ContactTileAdapter;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getLayoutResourceId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/list/ContactTileAdapter;)I
    .locals 1
    .param p0    # Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mWhitespaceStartEnd:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1
    .param p0    # Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1
    .param p0    # Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/common/list/ContactTileAdapter;)I
    .locals 1
    .param p0    # Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I

    return v0
.end method

.method private static cursorIsValid(Landroid/database/Cursor;)Z
    .locals 1
    .param p0    # Landroid/database/Cursor;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDivider()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0074

    invoke-static {v0, v1}, Lcom/android/contacts/common/MoreContactUtils;->createHeaderView(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private getLayoutResourceId(I)I
    .locals 3
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized viewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f04001d

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f04001c

    goto :goto_0

    :pswitch_2
    const v0, 0x7f040018

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setDividerPadding(Landroid/widget/TextView;Z)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/contacts/common/MoreContactUtils;->setHeaderViewBottomPadding(Landroid/content/Context;Landroid/widget/TextView;Z)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bindColumnIndices()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoUriIndex:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNameIndex:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    return-void
.end method

.method protected createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;
    .locals 12
    .param p1    # Landroid/database/Cursor;
    .param p2    # I

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->cursorIsValid(Landroid/database/Cursor;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-gt v10, p2, :cond_1

    :cond_0
    move-object v0, v9

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoUriIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    iget v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNameIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    :goto_1
    iput-object v5, v0, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    iget v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/contacts/common/list/ContactEntry;->status:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    :cond_2
    iput-object v9, v0, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    iput-object v4, v0, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Ljava/lang/String;

    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v9, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v0, Lcom/android/contacts/common/list/ContactEntry;->lookupUri:Landroid/net/Uri;

    iget v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, v0, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_3

    iget v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    iput-object v1, v0, Lcom/android/contacts/common/list/ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_4

    iget v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_4
    if-nez v8, :cond_5

    if-eqz v7, :cond_5

    iget-object v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/android/contacts/common/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    :cond_5
    iput-object v8, v0, Lcom/android/contacts/common/list/ContactEntry;->status:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0b0072

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public getColumnCount()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    return v0
.end method

.method public getCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->cursorIsValid(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized DisplayType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getDividerPosition(Landroid/database/Cursor;)I
    .locals 4
    .param p1    # Landroid/database/Cursor;

    const/4 v0, 0x0

    const/4 v1, -0x1

    sget-object v2, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->cursorIsValid(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    :pswitch_1
    return v0

    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 6
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    mul-int v1, p1, v3

    sget-object v3, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized DisplayType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v2

    :pswitch_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    if-ge p1, v3, :cond_1

    const/4 v0, 0x0

    :goto_2
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    add-int v1, v3, v4

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1    # I

    const/4 v1, 0x2

    const/4 v0, 0x0

    sget-object v2, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    if-ge p1, v2, :cond_0

    :goto_0
    :pswitch_1
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getNumFrequents()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    return v0
.end method

.method protected getRowCount(I)I
    .locals 2
    .param p1    # I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, v5, :cond_2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getDivider()Landroid/widget/TextView;

    move-result-object v4

    :goto_0
    check-cast v4, Landroid/widget/TextView;

    move-object v3, v4

    check-cast v3, Landroid/widget/TextView;

    if-nez p1, :cond_1

    move v4, v5

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->setDividerPadding(Landroid/widget/TextView;Z)V

    :goto_2
    return-object v3

    :cond_0
    move-object v4, p2

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    move-object v1, p2

    check-cast v1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4, v2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/content/Context;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_4

    :goto_3
    invoke-virtual {v1, v0, v5}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->configureRow(Ljava/util/ArrayList;Z)V

    move-object v3, v1

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected saveNumFrequentsFromCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1    # Landroid/database/Cursor;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$1;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    :goto_0
    return-void

    :pswitch_1
    invoke-static {p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->cursorIsValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    sub-int/2addr v0, v1

    :cond_0
    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->cursorIsValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Landroid/database/Cursor;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->saveNumFrequentsFromCursor(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDisplayType(Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/ContactPhotoManager;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method
