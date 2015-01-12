.class public abstract Lcom/android/contacts/detail/PhotoSelectionHandler;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mPhotoDim:I


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mCroppedPhotoUri:Landroid/net/Uri;

.field private final mIsDirectoryContact:Z

.field private final mPhotoMode:I

.field private final mPhotoPickSize:I

.field private final mPhotoView:Landroid/view/View;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mState:Lcom/android/contacts/common/model/RawContactDeltaList;

.field private final mTempPhotoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/common/model/RawContactDeltaList;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # Z
    .param p5    # Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    iput p3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    invoke-static {p1}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempCroppedImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mCroppedPhotoUri:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    iput-object p5, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getPhotoPickSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/PhotoSelectionHandler;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/PhotoSelectionHandler;Landroid/net/Uri;)V
    .locals 0
    .param p0    # Lcom/android/contacts/detail/PhotoSelectionHandler;
    .param p1    # Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startTakePhotoActivity(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/PhotoSelectionHandler;Landroid/net/Uri;)V
    .locals 0
    .param p0    # Lcom/android/contacts/detail/PhotoSelectionHandler;
    .param p1    # Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromGalleryActivity(Landroid/net/Uri;)V

    return-void
.end method

.method private doCropPhoto(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 5
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/net/Uri;

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getCropImageIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    const-string v3, "Cannot crop image"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0156

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getCropImageIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p2}, Lcom/android/contacts/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    iget v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v0, v1}, Lcom/android/contacts/util/ContactPhotoUtils;->addCropExtras(Landroid/content/Intent;I)V

    return-object v0
.end method

.method private getPhotoPickIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p1    # Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    return-object v0
.end method

.method private getPhotoPickSize()I
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    sget v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoDim:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoDim:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoDim:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    sget v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoDim:I

    if-eqz v0, :cond_3

    sget v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoDim:I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    const/16 v0, 0x2d0

    goto :goto_0
.end method

.method private getTakePhotoIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p1    # Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->addPhotoPickerExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    return-object v0
.end method

.method private getWritableEntityIndex()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->indexOfFirstWritableRawContact(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private startPickFromGalleryActivity(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getPhotoPickIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V

    return-void
.end method

.method private startTakePhotoActivity(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getTakePhotoIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    return-void
.end method

.method public getDeltaForAttachingPhotoToContact()Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 8

    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v7, v6}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v7, "account_type"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "data_set"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    const-string v7, "vnd.android.cursor.item/photo"

    invoke-static {v3, v0, v7}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/ValuesDelta;->setSuperPrimary(Z)V

    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public abstract getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.end method

.method protected getWritableEntityId()J
    .locals 4

    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public handlePhotoActivityResult(IILandroid/content/Intent;)Z
    .locals 11
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v2

    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    move v5, v6

    :goto_0
    return v5

    :pswitch_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2, v4}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelected(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v5, v6

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mCroppedPhotoUri:Landroid/net/Uri;

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    :goto_2
    if-eqz v1, :cond_3

    move-object v3, v4

    :goto_3
    iget-object v6, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mCroppedPhotoUri:Landroid/net/Uri;

    invoke-direct {p0, v3, v6}, Lcom/android/contacts/detail/PhotoSelectionHandler;->doCropPhoto(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;

    :try_start_1
    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v4, v3, v8}, Lcom/android/contacts/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v5, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Did not have read-access to uri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    iget v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    invoke-static {v1, v2, v0, v3}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/android/contacts/detail/PhotoSelectionHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$1;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    :cond_0
    return-void
.end method

.method protected abstract startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V
.end method
