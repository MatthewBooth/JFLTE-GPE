.class public Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.super Landroid/app/Activity;
.source "ConfirmAddDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$ExtraInfoQuery;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$PhotoQuery;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$ContactQuery;
    }
.end annotation


# static fields
.field private static final MIME_TYPE_PRIORITY_LIST:[Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z

.field private static sProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final mCancelButtonClickListener:Landroid/view/View$OnClickListener;

.field private mContactId:J

.field private mContactUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private final mDoneButtonClickListener:Landroid/view/View$OnClickListener;

.field private mEditableAccountType:Lcom/android/contacts/common/model/account/AccountType;

.field private mEditorContainerView:Landroid/view/ViewGroup;

.field private mEntityDeltaList:Lcom/android/contacts/common/model/RawContactDeltaList;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsReadOnly:Z

.field private mLookupKey:Ljava/lang/String;

.field private mMimetype:Ljava/lang/String;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

.field private mRawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

.field private mReadOnlyWarningView:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "ConfirmAdd"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->VERBOSE_LOGGING:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    const-string v1, "vnd.android.cursor.item/im"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->MIME_TYPE_PRIORITY_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "vnd.android.cursor.item/phone_v2"

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$2;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    iget-boolean v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadOnly:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Z)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onSaveCompleted(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startDisambiguationQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;JLandroid/net/Uri;)V
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1    # J
    .param p3    # Landroid/net/Uri;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startPhotoQuery(JLandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDisplayName()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->showDialogContent()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startExtraInfoQuery()V

    return-void
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->MIME_TYPE_PRIORITY_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setExtraInfoField(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1702(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0    # Ljava/lang/ref/WeakReference;

    sput-object p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1800()V
    .locals 0

    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->doSaveAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Lcom/android/contacts/common/model/RawContactDeltaList;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1    # Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setEntityDeltaList(Lcom/android/contacts/common/model/RawContactDeltaList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mLookupKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDefaultContactImage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)J
    .locals 2
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    iget-wide v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/contacts/activities/ConfirmAddDetailActivity;J)J
    .locals 1
    .param p0    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    return-wide p1
.end method

.method private static addEditableRawContact(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDeltaList;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 14
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/contacts/common/model/RawContactDeltaList;

    const/4 v13, 0x0

    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v11, v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    new-instance v8, Lcom/android/contacts/common/model/RawContact;

    invoke-direct {v8}, Lcom/android/contacts/common/model/RawContact;-><init>()V

    invoke-virtual {v8, v2}, Lcom/android/contacts/common/model/RawContact;->setAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    new-instance v5, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v11

    invoke-static {v11}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/android/contacts/common/model/RawContactDelta;-><init>(Lcom/android/contacts/common/model/ValuesDelta;)V

    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/RawContactDelta;

    const-string v11, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v11}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/model/ValuesDelta;

    const-string v11, "vnd.android.cursor.item/name"

    invoke-static {v5, v0, v11}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/contacts/common/model/ValuesDelta;->copyStructuredNameFieldsFrom(Lcom/android/contacts/common/model/ValuesDelta;)V

    :cond_2
    invoke-virtual {p1, v5}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private bindEditor()V
    .locals 8

    const/16 v7, 0x8

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    :cond_0
    iget-boolean v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadOnly:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    const v6, 0x7f0b0182

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v5, 0x7f0e0035

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->showDialogContent()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-boolean v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->editable:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v6, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->inflateEditorView(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;)V

    goto :goto_0
.end method

.method private static dismissProgressDialog()V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    sput-object v2, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    return-void

    :cond_1
    sget-object v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    move-object v0, v1

    goto :goto_0
.end method

.method private doSaveAction()V
    .locals 4

    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Lcom/android/contacts/common/model/AccountTypeManager;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/common/model/RawContactDeltaList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/common/model/RawContactDeltaList;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private inflateEditorView(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;)V
    .locals 8
    .param p1    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3    # Lcom/android/contacts/common/model/RawContactDelta;

    const/4 v4, 0x0

    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/contacts/editor/EditorUiUtils;->getLayoutResourceId(Ljava/lang/String;)I

    move-result v6

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    instance-of v1, v7, Lcom/android/contacts/editor/Editor;

    if-eqz v1, :cond_0

    move-object v0, v7

    check-cast v0, Lcom/android/contacts/editor/Editor;

    invoke-interface {v0, v4}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    new-instance v5, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v5}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/editor/Editor;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private onSaveCompleted(Z)V
    .locals 3
    .param p1    # Z

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setResult(I)V

    goto :goto_0
.end method

.method private resetAsyncQueryHandler()V
    .locals 2

    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    return-void
.end method

.method private setDefaultContactImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v2, p1, p2, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v3, v2}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setDisplayName()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setEntityDeltaList(Lcom/android/contacts/common/model/RawContactDeltaList;)V
    .locals 4
    .param p1    # Lcom/android/contacts/common/model/RawContactDeltaList;

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    sget-boolean v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->VERBOSE_LOGGING:Z

    if-eqz v1, :cond_1

    const-string v1, "ConfirmAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEntityDeltaList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/common/model/RawContactDeltaList;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v1, p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-static {p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->addEditableRawContact(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDeltaList;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->VERBOSE_LOGGING:Z

    if-eqz v1, :cond_2

    const-string v1, "ConfirmAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEntityDeltaList: created editable raw_contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadOnly:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/common/model/account/AccountType;

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->bindEditor()V

    return-void

    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadOnly:Z

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v1, p0}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/common/model/account/AccountType;

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-static {p0, v1, v2, v0}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setExtraInfoField(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const v1, 0x7f0e002f

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDialogContent()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startContactQuery(Landroid/net/Uri;)V
    .locals 8
    .param p1    # Landroid/net/Uri;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$ContactQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p1

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startDisambiguationQuery(Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v0, "limit"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v9, "display_name IS NULL"

    new-array v6, v7, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "photo_id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " IS NULL AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " <> ?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v9, "display_name = ?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v10

    iget-wide v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    goto :goto_0
.end method

.method private startExtraInfoQuery()V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x3

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$ExtraInfoQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "contact_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startPhotoQuery(JLandroid/net/Uri;)V
    .locals 9
    .param p1    # J
    .param p3    # Landroid/net/Uri;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PhotoQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->finish()V

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "vnd.android.cursor.item/phone_v2"

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setContentView(I)V

    const v2, 0x7f0e002a

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f0e0031

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    const v2, 0x7f0e0030

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0e0035

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0e0034

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0e002e

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayNameView:Landroid/widget/TextView;

    const v2, 0x7f0e002b

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0e0032

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->resetAsyncQueryHandler()V

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startContactQuery(Landroid/net/Uri;)V

    new-instance v2, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    const-string v2, "email"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "vnd.android.cursor.item/email_v2"

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error: No valid mimetype found in intent extras"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ConfirmAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog requested, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->dismissProgressDialog()V

    return-void
.end method
