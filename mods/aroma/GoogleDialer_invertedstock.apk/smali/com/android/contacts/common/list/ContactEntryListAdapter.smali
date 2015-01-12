.class public abstract Lcom/android/contacts/common/list/ContactEntryListAdapter;
.super Lcom/android/contacts/common/list/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# instance fields
.field private mAdjustSelectionBoundsEnabled:Z

.field private mCircularPhotos:Z

.field private mDarkTheme:Z

.field private mDefaultFilterHeaderText:Ljava/lang/CharSequence;

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFragmentRootView:Landroid/view/View;

.field private mIncludeProfile:Z

.field private mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

.field private mProfileExists:Z

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mUpperCaseQueryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDefaultFilterHeaderText(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartitions()V

    return-void
.end method

.method public static isRemoteDirectory(J)Z
    .locals 2
    .param p0    # J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 9
    .param p1    # Landroid/database/Cursor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getExtraStartingSection()Z

    move-result v6

    if-eqz v6, :cond_2

    array-length v6, v5

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    array-length v6, v3

    add-int/lit8 v6, v6, 0x1

    new-array v0, v6, [I

    const/4 v4, 0x0

    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    aget-object v7, v5, v4

    aput-object v7, v1, v6

    add-int/lit8 v6, v4, 0x1

    aget v7, v3, v4

    aput v7, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    aput v6, v0, v8

    const-string v6, ""

    aput-object v6, v1, v8

    new-instance v6, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {v6, v1, v0}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {v6, v5, v3}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    return-void
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 13
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    instance-of v10, v8, Lcom/android/contacts/common/list/DirectoryPartition;

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v8

    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    const v10, 0x7f0e00d5

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v10, 0x7f0e00d6

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isRemoteDirectory(J)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x1

    if-ne p2, v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    invoke-virtual {p1, v10, v6, v11, v12}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v4, v2

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    const v10, 0x7f0b0025

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    goto :goto_2
.end method

.method protected bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V
    .locals 18
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I

    const-wide/16 v8, 0x0

    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_1

    const/4 v6, -0x1

    move/from16 v0, p5

    if-ne v0, v6, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_4

    const/4 v12, 0x0

    :goto_1
    const/16 v16, 0x0

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p8

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v16

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v10

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    move-object v11, v7

    invoke-virtual/range {v10 .. v16}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    :cond_4
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # I

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    return-void
.end method

.method protected bindViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 4
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # Landroid/database/Cursor;
    .param p3    # I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    rem-long v2, v0, v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setId(I)V

    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .param p1    # I
    .param p2    # Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFragmentRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/ContactPhotoManager;->cancelPendingRequests(Landroid/view/View;)V

    goto :goto_0
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 14
    .param p1    # Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "ContactEntryListAdapter"

    const-string v12, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v11, "directoryType"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v11, "displayName"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v11, "photoSupport"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v6, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    new-instance v8, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    invoke-virtual {v8, v6, v7}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    invoke-static {v6, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isRemoteDirectory(J)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f08008f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    :goto_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_2

    const/4 v11, 0x3

    if-ne v9, v11, :cond_4

    :cond_2
    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_1

    :cond_3
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    move v4, v0

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    instance-of v11, v8, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v11, :cond_6

    check-cast v8, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v8}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->invalidate()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public clearPartitions()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->clearPartitions()V

    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8
    .param p1    # Z
    .param p2    # Z

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v1, v2

    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-direct {v0, v4, v4}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setPriorityDirectory(Z)V

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V

    return-object v0
.end method

.method public getCircularPhotos()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    return v0
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 9
    .param p1    # I
    .param p2    # Landroid/database/Cursor;
    .param p3    # I
    .param p4    # I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v2, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isRemoteDirectory(J)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method public getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 4
    .param p1    # Landroid/database/Cursor;
    .param p2    # I
    .param p3    # I

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    iget-boolean v3, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    invoke-direct {v2, v0, v1, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method

.method protected getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 7
    .param p1    # J

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I
    .locals 2
    .param p1    # Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {p1}, Lcom/android/contacts/common/list/DirectoryPartition;->getResultLimit()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    :cond_0
    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method protected getExtraStartingSection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 3
    .param p1    # I
    .param p2    # I

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->getItemViewType(II)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isUserProfile(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    iget-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getPartitionByDirectoryId(J)I
    .locals 7
    .param p1    # J

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getUpperCaseQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAdjustSelectionBoundsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAdjustSelectionBoundsEnabled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isPhotoSupported(I)Z
    .locals 2
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->isPhotoSupported()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method protected isUserProfile(I)Z
    .locals 7
    .param p1    # I

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_1

    const-string v6, "is_user_profile"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v1, v5

    :cond_0
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04002a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # I
    .param p5    # Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    return-object v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # I
    .param p5    # Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isAdjustSelectionBoundsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    return-object v0
.end method

.method public onDataReload()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v4

    instance-of v5, v4, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v5, :cond_1

    move-object v1, v4

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public removeDirectoriesAfterDefault()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    instance-of v3, v1, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAdjustSelectionBoundsEnabled:Z

    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    return-void
.end method

.method protected setDefaultFilterHeaderText(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return-void
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/list/ContactListFilter;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method

.method protected setFragmentRootView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFragmentRootView:Landroid/view/View;

    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/ContactPhotoManager;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Ljava/lang/String;

    check-cast p1, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setSectionHeaderTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setProfileExists(Z)V
    .locals 3
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mProfileExists:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080091

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactsSectionIndexer;->setProfileHeader(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return v0
.end method
