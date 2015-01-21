.class public Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneFavoritesTileAdapter.java"

# interfaces
.implements Lcom/android/dialer/list/OnDragDropListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAwaitingRemove:Z

.field protected mContactEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mContactEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mContactIdIndex:I

.field private mContext:Landroid/content/Context;

.field private mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

.field private mDelayCursorUpdates:Z

.field private mDragEnteredEntryIndex:I

.field private mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

.field private mDraggedEntryIndex:I

.field private mDropEntryIndex:I

.field protected mIdIndex:I

.field private mInDragging:Z

.field private mIsDefaultNumberIndex:I

.field private mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field protected mLookupIndex:I

.field protected mNameIndex:I

.field protected mNumFrequents:I

.field protected mNumStarred:I

.field private mPhoneNumberIndex:I

.field private mPhoneNumberLabelIndex:I

.field private mPhoneNumberTypeIndex:I

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected mPhotoUriIndex:I

.field protected mPinnedIndex:I

.field protected mPresenceIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mStarredIndex:I

.field protected mStatusIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/contacts/common/list/ContactTileView$Listener;
    .param p3    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    iput-boolean v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    iput-boolean v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDelayCursorUpdates:Z

    iput-boolean v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    new-instance v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;-><init>(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntryComparator:Ljava/util/Comparator;

    iput-object p3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    iput-object p2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    iput v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->bindColumnIndices()V

    return-void
.end method

.method private isIndexInBound(I)Z
    .locals 1
    .param p1    # I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markDropArea(I)V
    .locals 4
    .param p1    # I

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-direct {p0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    sget-object v3, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    iget-wide v2, v2, Lcom/android/contacts/common/list/ContactEntry;->id:J

    iput-wide v2, v1, Lcom/android/contacts/common/list/ContactEntry;->id:J

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-interface {v1, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->onDataSetChangedForAnimation([J)V

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private saveCursorToCache(Landroid/database/Cursor;)V
    .locals 19
    .param p1    # Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    const/16 v17, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v4, Landroid/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    const/16 v17, 0x14

    move/from16 v0, v17

    if-lt v3, v0, :cond_2

    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->arrangeContactsByPinnedPosition(Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactIdIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactEntry;

    if-eqz v5, :cond_3

    iget-boolean v0, v5, Lcom/android/contacts/common/list/ContactEntry;->isDefaultNumber:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoUriIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mLookupIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPinnedIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNameIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-lez v17, :cond_4

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIsDefaultNumberIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-lez v17, :cond_5

    const/4 v8, 0x1

    :goto_2
    new-instance v2, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v2}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    iput-wide v6, v2, Lcom/android/contacts/common/list/ContactEntry;->id:J

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    :goto_3
    iput-object v11, v2, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    if-eqz v14, :cond_7

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    :goto_4
    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    iput-object v10, v2, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Ljava/lang/String;

    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->lookupUri:Landroid/net/Uri;

    iput-boolean v9, v2, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    iput-boolean v8, v2, Lcom/android/contacts/common/list/ContactEntry;->isDefaultNumber:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberTypeIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberLabelIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v13, v12}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    iput v15, v2, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6, v7, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f080096

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method private unstarAndUnpinContact(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "starred"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "pinned"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method arrangeContactsByPinnedPosition(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x0

    const/16 v10, 0x15

    new-instance v5, Ljava/util/PriorityQueue;

    iget-object v8, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntryComparator:Ljava/util/Comparator;

    invoke-direct {v5, v10, v8}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    iget v8, v0, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-gt v8, v10, :cond_0

    iget v8, v0, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-nez v8, :cond_2

    :cond_0
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v8, v0, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_1

    invoke-virtual {v5, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v8, v4, 0x1

    if-ge v2, v8, :cond_6

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/list/ContactEntry;

    iget v8, v8, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-gt v8, v2, :cond_5

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactEntry;

    iput v2, v6, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v7, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactEntry;

    iput v11, v1, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected bindColumnIndices()V
    .locals 3

    const/4 v2, 0x6

    const/4 v1, 0x5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIdIndex:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mLookupIndex:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoUriIndex:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNameIndex:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    iput v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPresenceIndex:I

    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStatusIndex:I

    iput v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberIndex:I

    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberTypeIndex:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberLabelIndex:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIsDefaultNumberIndex:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPinnedIndex:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactIdIndex:I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/contacts/common/list/ContactEntry;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItem(I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItem(I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/contacts/common/list/ContactEntry;->id:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public getNumFrequents()I
    .locals 1

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    return v0
.end method

.method protected getNumStarredContacts(Landroid/database/Cursor;)I
    .locals 1
    .param p1    # Landroid/database/Cursor;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method getReflowedPinningOperations(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 12
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v3

    :goto_0
    if-gt v2, v5, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactEntry;

    add-int/lit8 v0, v2, 0x1

    iget v8, v1, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-ne v8, v0, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v1, Lcom/android/contacts/common/list/ContactEntry;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "pinned"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    instance-of v2, p2, Lcom/android/dialer/list/PhoneFavoriteTileView;

    if-eqz v2, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/dialer/list/PhoneFavoriteTileView;

    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f040036

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/list/PhoneFavoriteTileView;

    :cond_1
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V

    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItem(I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoriteTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleDrop()V
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-direct {p0, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    iput v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iget v5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getReflowedPinningOperations(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    :cond_2
    return-void

    :cond_3
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    invoke-direct {p0, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iput v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    sget-object v3, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Exception thrown when pinning contacts"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDragFinished(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setInDragging(Z)V

    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->handleDrop()V

    :cond_0
    return-void
.end method

.method public onDragHovered(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getContactEntry()Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->markDropArea(I)V

    goto :goto_0
.end method

.method public onDragStarted(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setInDragging(Z)V

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getContactEntry()Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->popContactEntry(I)V

    return-void
.end method

.method public onDroppedOnRemove()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactEntry;->lookupUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->unstarAndUnpinContact(Landroid/net/Uri;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    :cond_0
    return-void
.end method

.method public popContactEntry(I)V
    .locals 1
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->markDropArea(I)V

    :cond_0
    return-void
.end method

.method protected saveNumFrequentsFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumStarred:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;

    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDelayCursorUpdates:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getNumStarredContacts(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumStarred:I

    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->saveNumFrequentsFromCursor(Landroid/database/Cursor;)V

    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->saveCursorToCache(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-interface {v0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->onDataSetChangedForAnimation([J)V

    :cond_1
    return-void
.end method

.method public setInDragging(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDelayCursorUpdates:Z

    iput-boolean p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/ContactPhotoManager;

    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method
