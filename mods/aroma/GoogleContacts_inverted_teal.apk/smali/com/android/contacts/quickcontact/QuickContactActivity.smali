.class public Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;
    }
.end annotation


# static fields
.field private static final KEY_LOADER_EXTRA_EMAILS:Ljava/lang/String;

.field private static final KEY_LOADER_EXTRA_PHONES:Ljava/lang/String;

.field private static final LEADING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCRIM_COLOR:I

.field private static final SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRecentLoaderIds:[I

.field private static final sBidiFormatter:Landroid/text/BidiFormatter;


# instance fields
.field private mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field private final mAmongstMimeTypeDataItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedCp2DataCardModel:Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field private mContactData:Lcom/android/contacts/common/model/Contact;

.field private mContactLoader:Lcom/android/contacts/common/model/ContactLoader;

.field private mEntriesAndActionsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;",
            ">;"
        }
    .end annotation
.end field

.field final mEntryClickHandler:Landroid/view/View$OnClickListener;

.field private final mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mExcludeMimes:[Ljava/lang/String;

.field final mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

.field private mExtraMode:I

.field private mHasAlreadyBeenOpened:Z

.field private mHasComputedThemeColor:Z

.field private mHasIntentLaunched:Z

.field private mIsEntranceAnimationFinished:Z

.field private mIsExitAnimationInProgress:Z

.field private final mLoaderContactCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoaderInteractionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLookupUri:Landroid/net/Uri;

.field private mMaterialColorMapUtils:Lcom/android/contacts/common/util/MaterialColorMapUtils;

.field final mMultiShrinkScrollerListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

.field private mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field private mOnlyOneEmail:Z

.field private mOnlyOnePhoneNumber:Z

.field private final mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

.field private mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

.field private mRecentCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field private mRecentDataTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentLoaderResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

.field private mSelectAccountFragmentListener:Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;

.field private mStatusBarColor:I

.field private mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

.field private final mWithinMimeTypeDataItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/16 v0, 0xc8

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->SCRIM_COLOR:I

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/nickname"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/organization"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/contact_event"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/relation"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "vnd.android.cursor.item/im"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vnd.android.cursor.item/identity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "vnd.android.cursor.item/note"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->sBidiFormatter:Landroid/text/BidiFormatter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".KEY_LOADER_EXTRA_PHONES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->KEY_LOADER_EXTRA_PHONES:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".KEY_LOADER_EXTRA_EMAILS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->KEY_LOADER_EXTRA_EMAILS:Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentLoaderIds:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Lcom/android/contacts/util/ImageViewDrawableSetter;

    invoke-direct {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentLoaderResults:Ljava/util/Map;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMultiShrinkScrollerListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWithinMimeTypeDataItemComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAmongstMimeTypeDataItemComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$14;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderContactCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$15;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderInteractionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->editContact()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)I
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/util/MaterialColorMapUtils;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMaterialColorMapUtils:Lcom/android/contacts/common/util/MaterialColorMapUtils;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setThemeColor(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Lcom/android/contacts/common/model/Contact;

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->generateDataModelFromContact(Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindDataToCards(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showActivity()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->runEntranceAnimation()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->colorFromBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasComputedThemeColor:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasComputedThemeColor:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/QuickContactImageView;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;)V
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Lcom/android/contacts/common/model/Contact;

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindContactData(Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->KEY_LOADER_EXTRA_PHONES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->KEY_LOADER_EXTRA_EMAILS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentLoaderResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isAllRecentDataLoaded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindRecentData()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->contactInteractionsToEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Landroid/os/AsyncTask;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentDataTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOnePhoneNumber:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOneEmail:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;
    .locals 1
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/common/model/Contact;
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Lcom/android/contacts/common/model/Contact;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateStatusBarColor()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsExitAnimationInProgress:Z

    return p1
.end method

.method private analyzeWhitenessOfPhotoAsynchronously()V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v1}, Lcom/android/contacts/widget/QuickContactImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$13;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$13;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bindContactData(Lcom/android/contacts/common/model/Contact;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/model/Contact;

    const-string v0, "bindContactData"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->invalidateOptionsMenu()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "Set display photo & name"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->isDisplayNameFromOrganization()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/QuickContactImageView;->setIsBusiness(Z)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setupContactPhoto(Lcom/android/contacts/common/model/Contact;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->extractAndApplyTintFromPhotoViewAsynchronously()V

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->analyzeWhitenessOfPhotoAsynchronously()V

    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/common/model/Contact;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$10;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bindDataToCards(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    .locals 0
    .param p1    # Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startInteractionLoaders(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->populateContactAndAboutCard(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    return-void
.end method

.method private bindRecentData()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$16;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$16;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/util/List;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentDataTask:Landroid/os/AsyncTask;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentDataTask:Landroid/os/AsyncTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private buildAboutCardEntries(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/contacts/quickcontact/QuickContactActivity;->SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemsToEntries(Ljava/util/List;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private colorFromBitmap(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;

    const/16 v0, 0x18

    const/16 v2, 0x18

    invoke-static {p1, v2}, Landroid/support/v7/graphics/Palette;->generate(Landroid/graphics/Bitmap;I)Landroid/support/v7/graphics/Palette;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private contactInteractionsToEntries(Ljava/util/List;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;"
        }
    .end annotation

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/interactions/ContactInteraction;

    new-instance v1, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    const/4 v2, -0x1

    invoke-interface/range {v23 .. v24}, Lcom/android/contacts/interactions/ContactInteraction;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface/range {v23 .. v24}, Lcom/android/contacts/interactions/ContactInteraction;->getViewHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v23 .. v24}, Lcom/android/contacts/interactions/ContactInteraction;->getViewBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v23 .. v24}, Lcom/android/contacts/interactions/ContactInteraction;->getBodyIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface/range {v23 .. v24}, Lcom/android/contacts/interactions/ContactInteraction;->getViewFooter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v23 .. v24}, Lcom/android/contacts/interactions/ContactInteraction;->getFooterIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface/range {v23 .. v24}, Lcom/android/contacts/interactions/ContactInteraction;->getContentDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v23 .. v23}, Lcom/android/contacts/interactions/ContactInteraction;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-interface/range {v23 .. v23}, Lcom/android/contacts/interactions/ContactInteraction;->getIconResourceId()I

    move-result v20

    invoke-direct/range {v1 .. v20}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;I)V

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v21
.end method

.method private createLauncherShortcutWithContact()V
    .locals 2

    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$17;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$17;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    return-void
.end method

.method private static dataItemToEntry(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;Lcom/android/contacts/common/model/Contact;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;
    .locals 69
    .param p0    # Lcom/android/contacts/common/model/dataitem/DataItem;
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/contacts/common/model/Contact;
    .param p3    # Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;

    const/16 v44, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v65, 0x0

    const/16 v20, 0x0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    const/16 v26, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v47, 0x0

    const/4 v4, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v62

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v50

    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    if-eqz v7, :cond_6

    move-object/from16 v45, p0

    check-cast v45, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lcom/android/contacts/common/ContactsUtils;->buildImIntent(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/ImDataItem;)Landroid/util/Pair;

    move-result-object v7

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/Intent;

    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v48

    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v60, -0x1

    :goto_0
    const/4 v7, -0x1

    move/from16 v0, v60

    if-ne v0, v7, :cond_5

    const v7, 0x7f0b01d9

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v62

    move/from16 v1, v60

    invoke-static {v0, v1, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v65, v9

    move-object/from16 v64, v5

    :goto_1
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v9, v65

    move-object/from16 v5, v64

    move-object/from16 v15, v44

    :cond_0
    :goto_2
    if-eqz v22, :cond_1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v22, 0x0

    :cond_1
    if-eqz v24, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_1e

    const/16 v24, 0x0

    :cond_2
    :goto_3
    if-nez v15, :cond_1f

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1f

    if-nez v18, :cond_1f

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1f

    if-nez v20, :cond_1f

    const/4 v13, 0x0

    :goto_4
    return-object v13

    :cond_3
    if-eqz v48, :cond_4

    const/16 v60, 0x5

    :goto_5
    goto :goto_0

    :cond_4
    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v60

    goto :goto_5

    :cond_5
    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v62

    move/from16 v1, v60

    invoke-static {v0, v1, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v45 .. v45}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v64, v5

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;

    if-eqz v7, :cond_7

    move-object/from16 v55, p0

    check-cast v55, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;

    const v7, 0x7f0b01da

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v55 .. v55}, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;->getCompany()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual/range {v55 .. v55}, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v15, v44

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;

    if-eqz v7, :cond_b

    move-object/from16 v53, p0

    check-cast v53, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/Contact;->getNameRawContactId()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getRawContactId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v7, v10, v16

    if-nez v7, :cond_9

    const/16 v49, 0x1

    :goto_6
    if-eqz v49, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/Contact;->getDisplayNameSource()I

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_a

    const/16 v39, 0x1

    :goto_7
    if-nez v39, :cond_8

    const v7, 0x7f0b01db

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v53 .. v53}, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_8
    move-object/from16 v9, v65

    move-object/from16 v15, v44

    goto/16 :goto_2

    :cond_9
    const/16 v49, 0x0

    goto :goto_6

    :cond_a
    const/16 v39, 0x0

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/NoteDataItem;

    if-eqz v7, :cond_c

    move-object/from16 v54, p0

    check-cast v54, Lcom/android/contacts/common/model/dataitem/NoteDataItem;

    const v7, 0x7f0b01dc

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v54 .. v54}, Lcom/android/contacts/common/model/dataitem/NoteDataItem;->getNote()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v9, v65

    move-object/from16 v15, v44

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;

    if-eqz v7, :cond_d

    move-object/from16 v68, p0

    check-cast v68, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;

    const v7, 0x7f0b01dd

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v68 .. v68}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    :try_start_0
    new-instance v67, Landroid/net/WebAddress;

    move-object/from16 v0, v68

    move-object/from16 v1, p1

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v67

    invoke-direct {v0, v7}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    new-instance v46, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual/range {v67 .. v67}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v0, v46

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v22, v46

    :goto_8
    move-object/from16 v9, v65

    move-object/from16 v15, v44

    goto/16 :goto_2

    :catch_0
    move-exception v40

    const-string v7, "QuickContact"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t parse website: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v68

    move-object/from16 v1, p1

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    if-eqz v7, :cond_10

    move-object/from16 v42, p0

    check-cast v42, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v38

    const/4 v7, 0x0

    move-object/from16 v0, v38

    invoke-static {v0, v7}, Lcom/android/contacts/common/util/DateUtils;->parseDate(Ljava/lang/String;Z)Ljava/util/Calendar;

    move-result-object v36

    if-eqz v36, :cond_e

    invoke-static/range {v36 .. v36}, Lcom/android/contacts/common/util/DateUtils;->getNextAnnualDate(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v52

    sget-object v7, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v35

    const-string v7, "time"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual/range {v52 .. v52}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    move-object/from16 v0, v35

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v35 .. v35}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v22

    :cond_e
    const v7, 0x7f0b01de

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v42

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v7

    if-eqz v7, :cond_f

    move-object/from16 v0, v42

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v7

    invoke-virtual/range {v42 .. v42}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v14

    move-object v8, v4

    move-object v10, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v15, v44

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/RelationDataItem;

    if-eqz v7, :cond_12

    move-object/from16 v61, p0

    check-cast v61, Lcom/android/contacts/common/model/dataitem/RelationDataItem;

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    new-instance v22, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEARCH"

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "query"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "vnd.android.cursor.dir/contact"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_11
    const v7, 0x7f0b01df

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v61 .. v61}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v16

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v10 .. v16}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v7

    if-eqz v7, :cond_27

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v7

    invoke-virtual/range {v61 .. v61}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_9
    move-object/from16 v15, v44

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    if-eqz v7, :cond_14

    move-object/from16 v56, p0

    check-cast v56, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    invoke-virtual/range {v56 .. v56}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    const v7, 0x7f0b003f

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/contacts/quickcontact/QuickContactActivity;->sBidiFormatter:Landroid/text/BidiFormatter;

    move-object/from16 v0, v56

    move-object/from16 v1, p1

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v7, v8, v10}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v6

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    const v7, 0x7f0b0085

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v16

    move-object v10, v4

    move-object v11, v6

    invoke-direct/range {v10 .. v16}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v56

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v7

    if-eqz v7, :cond_26

    move-object/from16 v0, v56

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v7

    invoke-virtual/range {v56 .. v56}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v59

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f020045

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v32, 0x7f020045

    invoke-static/range {p1 .. p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual/range {v56 .. v56}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    :cond_13
    new-instance v24, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v8, "smsto"

    invoke-virtual/range {v56 .. v56}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v7, 0x7f020040

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    const v7, 0x7f0b004d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v8, v10

    move-object/from16 v0, v62

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f020053

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    invoke-virtual/range {v56 .. v56}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.contacts.quickcontact.QuickContactActivity"

    invoke-static {v7, v8}, Lcom/android/contacts/common/CallUtil;->getVideoCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v30

    const v7, 0x7f0b0062

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/EmailDataItem;

    if-eqz v7, :cond_15

    move-object/from16 v41, p0

    check-cast v41, Lcom/android/contacts/common/model/dataitem/EmailDataItem;

    invoke-virtual/range {v41 .. v41}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getData()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    const v7, 0x7f0b0097

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mailto"

    const/4 v8, 0x0

    move-object/from16 v0, v33

    invoke-static {v7, v0, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v51

    new-instance v22, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    move-object/from16 v0, v22

    move-object/from16 v1, v51

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v41 .. v41}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getAddress()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    const v7, 0x7f0b0086

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v16

    move-object v10, v4

    move-object v11, v6

    invoke-direct/range {v10 .. v16}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v7

    if-eqz v7, :cond_25

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v7

    invoke-virtual/range {v41 .. v41}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v59

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f02002c

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v32, 0x7f02002c

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;

    if-eqz v7, :cond_16

    move-object/from16 v57, p0

    check-cast v57, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;

    invoke-virtual/range {v57 .. v57}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getFormattedAddress()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    const v7, 0x7f0b00a3

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v58 .. v58}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v57 .. v57}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getFormattedAddress()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    const v7, 0x7f0b0087

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v16

    move-object v10, v4

    move-object v11, v6

    invoke-direct/range {v10 .. v16}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v57

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v7

    if-eqz v7, :cond_24

    move-object/from16 v0, v57

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v7

    invoke-virtual/range {v57 .. v57}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v59

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v58 .. v58}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressDirectionsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v24

    const v7, 0x7f02002a

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    const v7, 0x7f0b01e0

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f020046

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v32, 0x7f020046

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;

    if-eqz v7, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_23

    move-object/from16 v63, p0

    check-cast v63, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;

    invoke-virtual/range {v63 .. v63}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;->getSipAddress()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    const v7, 0x7f0b003f

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v59

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "sip"

    const/4 v8, 0x0

    move-object/from16 v0, v33

    invoke-static {v7, v0, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v6, v33

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    const v7, 0x7f0b0085

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v16

    move-object v10, v4

    move-object v11, v6

    invoke-direct/range {v10 .. v16}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v63

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v7

    if-eqz v7, :cond_22

    move-object/from16 v0, v63

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v7

    invoke-virtual/range {v63 .. v63}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$SipAddress;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v59

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f020027

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v32, 0x7f020027

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p0

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    if-eqz v7, :cond_19

    move-object/from16 v7, p0

    check-cast v7, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v7}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getGivenName()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0b01ce

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p3

    iput-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;->value:Ljava/lang/String;

    :goto_e
    move-object/from16 v9, v65

    move-object/from16 v15, v44

    goto/16 :goto_2

    :cond_18
    const v7, 0x7f0b01ce

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p3

    iput-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;->value:Ljava/lang/String;

    goto :goto_e

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v50

    iget-object v9, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    new-instance v22, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v10

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v66

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    move-object/from16 v1, v66

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v22, :cond_21

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    const/4 v7, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1a
    :goto_f
    packed-switch v7, :pswitch_data_0

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v16

    move-object v10, v4

    move-object v11, v6

    invoke-direct/range {v10 .. v16}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static/range {p1 .. p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v7, v8, v0}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Ljava/lang/String;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_1b

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_1b
    const/16 v26, 0x0

    goto/16 :goto_2

    :sswitch_0
    const-string v8, "vnd.android.cursor.item/vnd.googleplus.profile"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v7, 0x0

    goto :goto_f

    :sswitch_1
    const-string v8, "vnd.android.cursor.item/vnd.googleplus.profile.comm"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v7, 0x1

    goto :goto_f

    :pswitch_0
    const-string v7, "Add to circle"

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const v7, 0x7f02001e

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v32, 0x7f02001e

    goto/16 :goto_2

    :cond_1c
    const v7, 0x7f02002e

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v32, 0x7f02002e

    goto/16 :goto_2

    :pswitch_1
    const-string v7, "Start video call"

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const v7, 0x7f020032

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v32, 0x7f020032

    goto/16 :goto_2

    :cond_1d
    const v7, 0x7f020031

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v32, 0x7f020031

    goto/16 :goto_2

    :cond_1e
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntentResolveLabel(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v10

    const-wide/32 v16, 0x7fffffff

    cmp-long v7, v10, v16

    if-lez v7, :cond_20

    const/4 v14, -0x1

    :goto_10
    new-instance v13, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move-object/from16 v19, v9

    move-object/from16 v28, v4

    invoke-direct/range {v13 .. v32}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v10

    long-to-int v14, v10

    goto :goto_10

    :cond_21
    move-object/from16 v15, v44

    goto/16 :goto_2

    :cond_22
    move-object/from16 v9, v65

    goto/16 :goto_d

    :cond_23
    move-object/from16 v9, v65

    move-object/from16 v15, v44

    goto/16 :goto_2

    :cond_24
    move-object/from16 v9, v65

    goto/16 :goto_c

    :cond_25
    move-object/from16 v9, v65

    goto/16 :goto_b

    :cond_26
    move-object/from16 v9, v65

    goto/16 :goto_a

    :cond_27
    move-object/from16 v9, v65

    goto/16 :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x5eab085 -> :sswitch_1
        0xc3cf4d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private dataItemsToEntries(Ljava/util/List;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;
    .locals 5
    .param p2    # Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;",
            "Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-static {v0, p0, v4, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemToEntry(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;Lcom/android/contacts/common/model/Contact;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private editContact()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/common/model/ContactLoader;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ContactLoader;->cacheResult()V

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getEditContactIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private extractAndApplyTintFromPhotoViewAsynchronously()V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    invoke-virtual {v1}, Lcom/android/contacts/widget/QuickContactImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$12;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private generateDataModelFromContact(Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
    .locals 26
    .param p1    # Lcom/android/contacts/common/model/Contact;

    const-string v23, "Build data items map"

    invoke-static/range {v23 .. v23}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/common/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/common/model/dataitem/DataItem;->setRawContactId(J)V

    invoke-virtual {v8}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v8, v13}, Lcom/android/contacts/common/model/dataitem/DataItem;->setDataKind(Lcom/android/contacts/common/model/dataitem/DataKind;)V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v13}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1

    if-eqz v15, :cond_1

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    invoke-interface {v12, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v23, "sort within mimetypes"

    invoke-static/range {v23 .. v23}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWithinMimeTypeDataItemComparator:Ljava/util/Comparator;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v23, "sort amongst mimetypes"

    invoke-static/range {v23 .. v23}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAmongstMimeTypeDataItemComparator:Ljava/util/Comparator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v23, "cp2 data items to entries"

    invoke-static/range {v23 .. v23}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/contacts/quickcontact/QuickContactActivity;->buildAboutCardEntries(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    const/16 v16, 0x0

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/common/model/dataitem/DataItem;

    sget-object v23, Lcom/android/contacts/quickcontact/QuickContactActivity;->SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_6
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_7
    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemsToEntries(Ljava/util/List;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_6

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v14, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    iget-object v0, v3, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;->value:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v14, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->customAboutCardName:Ljava/lang/String;

    iput-object v2, v14, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->aboutCardEntries:Ljava/util/List;

    iput-object v6, v14, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->contactCardEntries:Ljava/util/List;

    iput-object v12, v14, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->dataItemsMap:Ljava/util/Map;

    return-object v14
.end method

.method private getEditContactIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private static getIntentResolveLabel(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0    # Landroid/content/Intent;
    .param p1    # Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_1
    if-le v2, v5, :cond_0

    invoke-static {p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/android/contacts/quickcontact/ResolveCache;->getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1    # Landroid/net/Uri;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uri_to_authorize"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "authorize"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "authorized_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method private initializeNoContactDetailCard()V
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020045

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    const/4 v3, -0x2

    const v6, 0x7f0b0172

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getEditContactIntent()Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0x7f020045

    invoke-direct/range {v2 .. v19}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f02002c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    new-instance v5, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    const/4 v6, -0x2

    const v3, 0x7f0b0173

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getEditContactIntent()Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, 0x7f02002c

    invoke-direct/range {v5 .. v22}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070035

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    new-instance v23, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual/range {v8 .. v14}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setEntryHeaderColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    move/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setColorAndFilter(ILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method private isAllRecentDataLoaded()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentLoaderResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v1, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentLoaderIds:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContactEditable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContactShareable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isShortcutCreatable()Z
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private populateContactAndAboutCard(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    .locals 29
    .param p1    # Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCachedCp2DataCardModel:Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "bind contact card"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->contactCardEntries:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->aboutCardEntries:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->customAboutCardName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->isExpanded()Z

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual/range {v2 .. v8}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v2, "bind about card"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/Contact;->getPhoneticName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v26, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    const/4 v2, -0x1

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b0081

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0081

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v6, v26

    move v7, v2

    move-object/from16 v8, v19

    move-object/from16 v9, v28

    move-object v10, v5

    move-object/from16 v19, v4

    invoke-direct/range {v6 .. v23}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;I)V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b01db

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_2
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setTitle(Ljava/lang/String;)V

    :cond_3
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    move-object/from16 v7, v24

    invoke-virtual/range {v6 .. v12}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->initializeNoContactDetailCard()V

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isAllRecentDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    goto :goto_3
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1    # Landroid/content/Intent;

    const/4 v12, 0x0

    const/4 v11, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v8, "contacts"

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "android.provider.extra.MODE"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    const-string v8, "missing lookupUri"

    invoke-static {v4, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    const-string v8, "android.provider.extra.EXCLUDE_MIMES"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderContactCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v8, v11, v12, v9}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/ContactLoader;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/common/model/ContactLoader;

    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {p0, v8}, Lcom/android/contacts/NfcHandler;->register(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    if-eq v5, v8, :cond_2

    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentLoaderIds:[I

    array-length v3, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    aget v2, v0, v1

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderContactCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v8, v11, v12, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/ContactLoader;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/common/model/ContactLoader;

    goto :goto_1
.end method

.method private runEntranceAnimation()V
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollUpForEntranceAnimation(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setHeaderNameText(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setHeaderNameText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setThemeColor(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 3
    .param p1    # Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget v0, p1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->setHeaderTintColor(I)V

    iget v1, p1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    iput v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStatusBarColor:I

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateStatusBarColor()V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setColorAndFilter(ILandroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setColorAndFilter(ILandroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setColorAndFilter(ILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method private shareContact()V
    .locals 8

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/common/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v6, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "text/x-vcard"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v6, 0x7f0b0177

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const v6, 0x7f0b0102

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showActivity()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$11;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-static {v0, v2, v1}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private startInteractionLoaders(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    .locals 12
    .param p1    # Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    const/4 v11, 0x1

    iget-object v0, p1, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->dataItemsMap:Ljava/util/Map;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v11, :cond_0

    iput-boolean v11, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOnePhoneNumber:Z

    :cond_0
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    sget-object v8, Lcom/android/contacts/quickcontact/QuickContactActivity;->KEY_LOADER_EXTRA_PHONES:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "start sms loader"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderInteractionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v8, v11, v7, v9}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v8, "start call log loader"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderInteractionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v8, v9, v7, v10}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v8, "start calendar loader"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v11, :cond_2

    iput-boolean v11, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOneEmail:Z

    :cond_2
    const/4 v1, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v1, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/dataitem/EmailDataItem;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v8, Lcom/android/contacts/quickcontact/QuickContactActivity;->KEY_LOADER_EXTRA_EMAILS:Ljava/lang/String;

    invoke-virtual {v3, v8, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderInteractionsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v8, v9, v3, v10}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private toggleStar(Landroid/view/MenuItem;)V
    .locals 8
    .param p1    # Landroid/view/MenuItem;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-eqz v3, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v6

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v7

    if-nez v2, :cond_1

    move v3, v4

    :goto_0
    invoke-static {p1, v6, v7, v3}, Lcom/android/contacts/detail/ContactDisplayUtils;->configureStarredMenuItem(Landroid/view/MenuItem;ZZZ)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v2, :cond_2

    :goto_1
    invoke-static {p0, v3, v4}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v3, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2
.end method

.method private updateStatusBarColor()V
    .locals 7

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollNeededToBeFullScreen()I

    move-result v2

    if-gtz v2, :cond_1

    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStatusBarColor:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v3, "statusBarColor"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getStatusBarColor()I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/interactions/TouchPointManager;->setPoint(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->processIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsExitAnimationInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1    # Landroid/view/MenuItem;

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown menu option "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    const-string v4, "QuickContact"

    const-string v5, "bad menuInfo"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :pswitch_0
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyText()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6, v4}, Lcom/android/contacts/common/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/android/contacts/ContactSaveService;->createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/4 v9, 0x0

    const/high16 v6, 0x20000

    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, "onCreate()"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->processIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    const v3, 0x7f040064

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setContentView(I)V

    new-instance v3, Lcom/android/contacts/common/util/MaterialColorMapUtils;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/contacts/common/util/MaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMaterialColorMapUtils:Lcom/android/contacts/common/util/MaterialColorMapUtils;

    const v3, 0x7f0e00c4

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/widget/MultiShrinkScroller;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    const v3, 0x7f0e00cb

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const v3, 0x7f0e00ca

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const v3, 0x7f0e00cc

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const v3, 0x7f0e00cd

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01cc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setExpandButtonText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setTitle(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const v3, 0x7f0e002b

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/widget/QuickContactImageView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;

    const v3, 0x7f0e00c5

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    invoke-direct {v3, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v3, 0x7f0e00bc

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/contacts/common/util/ViewUtil;->addRectangularOutlineProvider(Landroid/view/View;Landroid/content/res/Resources;)V

    const v3, 0x7f0e00c1

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setActionBar(Landroid/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f04006a

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->SCRIM_COLOR:I

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMultiShrinkScrollerListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    iget v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    if-ne v3, v8, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v7, v3}, Lcom/android/contacts/widget/MultiShrinkScroller;->initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;Z)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v3, v8}, Lcom/android/contacts/widget/MultiShrinkScroller;->setVisibility(I)V

    const v3, 0x7f0b0072

    invoke-direct {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(I)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v6, "select_account_fragment"

    invoke-virtual {v3, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectAccountFragmentListener:Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectAccountFragmentListener:Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;

    invoke-direct {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectAccountFragmentListener:Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectAccountFragmentListener:Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;

    const-string v7, "select_account_fragment"

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectAccountFragmentListener:Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;

    invoke-virtual {v3, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;->setRetainInstance(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectAccountFragmentListener:Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;

    invoke-virtual {v3, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$SelectAccountDialogFragmentListener;->setQuickContactActivity(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    new-instance v6, Lcom/android/contacts/quickcontact/QuickContactActivity$8;

    invoke-direct {v6, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$8;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-static {v3, v4, v6}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    if-eqz p1, :cond_2

    const-string v3, "theme_color"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    new-instance v4, Lcom/android/contacts/quickcontact/QuickContactActivity$9;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$9;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;I)V

    invoke-static {v3, v5, v4}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_3
    move v3, v5

    goto/16 :goto_0

    :cond_4
    move v3, v5

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasComputedThemeColor:Z

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->processIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1    # Landroid/view/MenuItem;

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->toggleStar(Landroid/view/MenuItem;)V

    move v4, v5

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-static {v4}, Lcom/android/contacts/quickcontact/DirectoryContactUtil;->isDirectoryContact(Lcom/android/contacts/common/model/Contact;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/Contact;->getDisplayNameSource()I

    move-result v4

    const/16 v6, 0x1e

    if-lt v4, v6, :cond_0

    const-string v4, "name"

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/common/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v4, "last_time_used"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v4, "times_used"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v4, "data"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/Contact;->getDirectoryExportSupport()I

    move-result v4

    if-ne v4, v5, :cond_2

    const-string v4, "com.android.contacts.extra.ACCOUNT"

    new-instance v6, Landroid/accounts/Account;

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/common/model/Contact;->getDirectoryAccountName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/Contact;->getDirectoryAccountType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "com.android.contacts.extra.DATA_SET"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v4, "disableDeleteMenuOption"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_2
    move v4, v5

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-static {v4, p0}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->isInvisibleAndAddable(Lcom/android/contacts/common/model/Contact;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-static {v4, p0}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->addToDefaultGroup(Lcom/android/contacts/common/model/Contact;Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->editContact()V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->shareContact()V

    move v4, v5

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->createLauncherShortcutWithContact()V

    move v4, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00f7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1    # Landroid/view/Menu;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-eqz v6, :cond_3

    const v6, 0x7f0e00f7

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v7

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/Contact;->getStarred()Z

    move-result v8

    invoke-static {v3, v6, v7, v8}, Lcom/android/contacts/detail/ContactDisplayUtils;->configureStarredMenuItem(Landroid/view/MenuItem;ZZZ)V

    const v6, 0x7f0e00f8

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-static {v6}, Lcom/android/contacts/quickcontact/DirectoryContactUtil;->isDirectoryContact(Lcom/android/contacts/common/model/Contact;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-static {v6, p0}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->isInvisibleAndAddable(Lcom/android/contacts/common/model/Contact;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const v5, 0x7f020043

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v5, 0x7f0b0176

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    const v5, 0x7f0e00f9

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactShareable()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f0e00fa

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isShortcutCreatable()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return v4

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result v6

    if-eqz v6, :cond_2

    const v5, 0x7f020026

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v5, 0x7f0b0138

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCachedCp2DataCardModel:Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->populateContactAndAboutCard(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_0

    const-string v0, "theme_color"

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentDataTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentDataTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    return-void
.end method
