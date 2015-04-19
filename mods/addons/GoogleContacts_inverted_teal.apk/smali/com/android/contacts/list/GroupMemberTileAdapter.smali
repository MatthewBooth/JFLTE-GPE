.class public Lcom/android/contacts/list/GroupMemberTileAdapter;
.super Lcom/android/contacts/common/list/ContactTileAdapter;
.source "GroupMemberTileAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/contacts/common/list/ContactTileView$Listener;
    .param p3    # I

    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;ILcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V

    return-void
.end method


# virtual methods
.method protected bindColumnIndices()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mIdIndex:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mLookupIndex:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mPhotoUriIndex:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mNameIndex:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mPresenceIndex:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mStatusIndex:I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/GroupMemberTileAdapter;->getRowCount(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getDividerPosition(Landroid/database/Cursor;)I
    .locals 1
    .param p1    # Landroid/database/Cursor;

    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/GroupMemberTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 4
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

    iget v3, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mColumnCount:I

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mColumnCount:I

    mul-int v1, p1, v3

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/list/GroupMemberTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method protected saveNumFrequentsFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Landroid/database/Cursor;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/GroupMemberTileAdapter;->mNumFrequents:I

    return-void
.end method
