.class public Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "PhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCountryIso:Ljava/lang/String;

.field private final mExtendedDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/DirectoryPartition;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstExtendedDirectoryId:J

.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private final mUnknownNameText:Ljava/lang/CharSequence;

.field private mUseCallableUri:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    const v1, 0x7f0b0076

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setDefaultFilterHeaderText(I)V

    const v1, 0x104000e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    invoke-static {}, Lcom/android/contacts/common/extensions/ExtensionsFactory;->getExtendedPhoneDirectoriesManager()Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;->getExtendedDirectories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    goto :goto_0
.end method

.method private applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 5
    .param p1    # Landroid/content/CursorLoader;
    .param p2    # Landroid/net/Uri$Builder;
    .param p3    # J
    .param p5    # Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz p5, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p5, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v2, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported filter type came (type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p5, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showing all contacts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p5, p2}, Lcom/android/contacts/common/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getExtendedDirectoryFromId(J)Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 5
    .param p1    # J

    iget-wide v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    sub-long v2, p1, v2

    long-to-int v0, v2

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    return-object v1
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # Landroid/database/Cursor;

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    return-void
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;Z)V
    .locals 10
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Z

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v6, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v4, v6}, Lcom/android/contacts/common/list/ContactListItemView;->setPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v4, v2

    goto :goto_0

    :cond_2
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/contacts/common/GeoUtil;->getGeocodedLocationFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 15
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;

    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isPhotoSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView()V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCircularPhotos()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    const/4 v8, 0x0

    :goto_1
    const/4 v11, 0x0

    if-nez v8, :cond_3

    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v11, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCircularPhotos()Z

    move-result v2

    invoke-direct {v11, v12, v13, v2}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCircularPhotos()Z

    move-result v10

    invoke-virtual/range {v6 .. v11}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    :cond_4
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 3
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    iget-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 22
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # I

    invoke-super/range {p0 .. p4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/contacts/common/list/ContactListItemView;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setHighlight(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    cmp-long v4, v14, v20

    if-nez v4, :cond_0

    const/16 v16, 0x0

    :cond_0
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    cmp-long v4, v14, v18

    if-nez v4, :cond_1

    const/16 v17, 0x0

    :cond_1
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x6

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x7

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v4 .. v12}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v13}, Lcom/android/contacts/common/list/DirectoryPartition;->isDisplayNumber()Z

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;Z)V

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDisplayPhotos()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->unbindName(Lcom/android/contacts/common/list/ContactListItemView;)V

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView(ZZ)V

    goto :goto_0
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 14
    .param p1    # Landroid/database/Cursor;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectorySearchMode()I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionCount()I

    move-result v10

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    add-int/2addr v11, v8

    if-eq v10, v11, :cond_0

    const-wide v10, 0x7fffffffffffffffL

    iput-wide v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    if-lez v8, :cond_0

    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionCount()I

    move-result v5

    :goto_0
    if-ge v1, v5, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v9}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    cmp-long v10, v2, v6

    if-lez v10, :cond_2

    move-wide v6, v2

    :cond_2
    invoke-static {v2, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isRemoteDirectory(J)Z

    move-result v10

    if-nez v10, :cond_3

    add-int/lit8 v4, v1, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    iput-wide v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_0

    iget-wide v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    int-to-long v12, v1

    add-long v2, v10, v12

    iget-object v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionByDirectoryId(J)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    invoke-virtual {p0, v4, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->addPartition(ILcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 18
    .param p1    # Landroid/content/CursorLoader;
    .param p2    # J

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_0

    const-string v16, ""

    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getExtendedDirectoryFromId(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/common/list/DirectoryPartition;->getContentUri()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extended directory must have a content URL: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v5, "limit"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v5, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-static/range {p2 .. p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isRemoteDirectory(J)Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v13, :cond_4

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    :goto_1
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v5, "directory"

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz v13, :cond_3

    const-string v5, "limit"

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/CursorLoader;->getSelection()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "length(data1) < 1000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const-string v5, "remove_duplicate_entries"

    const-string v6, "true"

    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    sget-object v5, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getSortOrder()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    const-string v5, "sort_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v5, :cond_5

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_5
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v5, :cond_8

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    :goto_5
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "directory"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string v6, "true"

    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto/16 :goto_2

    :cond_8
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_5

    :cond_9
    const-string v14, "length(data1) < 1000"

    goto :goto_3

    :cond_a
    sget-object v5, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string v5, "sort_key_alt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/database/Cursor;
    .param p3    # I
    .param p4    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "encoded"

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "displayName"

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 3
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionForPosition(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDataUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDataUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isRemoteDirectory(J)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 2
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isExtendedDirectory(J)Z
    .locals 3
    .param p1    # J

    iget-wide v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # I
    .param p5    # Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

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

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    return-object v0
.end method

.method protected setHighlight(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-void
.end method

.method public setUseCallableUri(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    return-void
.end method

.method protected unbindName(Lcom/android/contacts/common/list/ContactListItemView;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->hideDisplayName()V

    return-void
.end method
