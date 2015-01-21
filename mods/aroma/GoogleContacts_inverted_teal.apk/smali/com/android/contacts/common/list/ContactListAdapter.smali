.class public abstract Lcom/android/contacts/common/list/ContactListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;
    }
.end annotation


# instance fields
.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0072

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0    # Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bindNameAndViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # Landroid/database/Cursor;

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->bindViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 12
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;

    const/4 v6, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->isPhotoSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView()V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getCircularPhotos()Z

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    move-object v7, v6

    :goto_1
    const/4 v10, 0x0

    if-nez v7, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v10

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getCircularPhotos()Z

    move-result v9

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    :cond_4
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1
.end method

.method protected bindPresenceAndStatusMessage(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # Landroid/database/Cursor;

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showPresenceAndStatusMessage(Landroid/database/Cursor;II)V

    return-void
.end method

.method protected bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # Landroid/database/Cursor;

    const/16 v0, 0x8

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showSnippet(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    iget-object v1, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1    # I
    .param p2    # Landroid/database/Cursor;

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->setProfileExists(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 3
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 9
    .param p1    # I
    .param p2    # Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v6, 0x6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

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

    :cond_0
    return-object v5
.end method

.method public getFirstContactUri()Landroid/net/Uri;
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected final getProjection(Z)[Ljava/lang/String;
    .locals 2
    .param p1    # Z

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    if-eqz p1, :cond_1

    if-ne v0, v1, :cond_0

    # getter for: Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$000()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    # getter for: Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_ALTERNATIVE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$100()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    # getter for: Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$200()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->access$300()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSelectedContactDirectoryId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    return-wide v0
.end method

.method public getSelectedContactId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    return-wide v0
.end method

.method public getSelectedContactLookupKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedContactPosition()I
    .locals 14

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-nez v10, :cond_1

    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    const/4 v9, -0x1

    :cond_0
    :goto_0
    return v9

    :cond_1
    const/4 v2, 0x0

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionCount()I

    move-result v7

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    move v8, v3

    :cond_2
    const/4 v10, -0x1

    if-ne v8, v10, :cond_4

    const/4 v9, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v9, -0x1

    goto :goto_0

    :cond_5
    const/4 v10, -0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v5, -0x1

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-eqz v10, :cond_8

    const/4 v10, 0x6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    :cond_7
    :goto_2
    const/4 v10, -0x1

    if-ne v5, v10, :cond_a

    const/4 v9, -0x1

    goto :goto_0

    :cond_8
    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_9

    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    :cond_9
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    cmp-long v10, v0, v10

    if-nez v10, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactListAdapter;->getPositionForPartition(I)I

    move-result v10

    add-int v9, v10, v5

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactListAdapter;->hasHeader(I)Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public isSelectedContact(ILandroid/database/Cursor;)Z
    .locals 10
    .param p1    # I
    .param p2    # Landroid/database/Cursor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactDirectoryId()J

    move-result-wide v6

    cmp-long v3, v6, v0

    if-eqz v3, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1

    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactId()J

    move-result-wide v6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    move v5, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # I
    .param p5    # Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

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

    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isAdjustSelectionBoundsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSelectionVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setActivatedStateSupported(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    :cond_0
    return-object v0
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-void
.end method

.method public setSelectedContact(JLjava/lang/String;J)V
    .locals 0
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # J

    iput-wide p1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    iput-object p3, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    return-void
.end method
