.class public abstract Lcom/android/dialer/list/PhoneFavoriteTileView;
.super Lcom/android/contacts/common/list/ContactTileView;
.source "PhoneFavoriteTileView.java"


# static fields
.field private static final EMPTY_CLIP_DATA:Landroid/content/ClipData;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPhoneNumberString:Ljava/lang/String;

.field private mShadowOverlay:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteTileView;->TAG:Ljava/lang/String;

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteTileView;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000()Landroid/content/ClipData;
    .locals 1

    sget-object v0, Lcom/android/dialer/list/PhoneFavoriteTileView;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteTileView;

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/PhoneFavoriteTileView;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteTileView;

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mPhoneNumberString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteTileView;

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dialer/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteTileView;

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method


# virtual methods
.method protected configureViewForImage(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mShadowOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mShadowOverlay:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteTileView$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteTileView$2;-><init>(Lcom/android/dialer/list/PhoneFavoriteTileView;)V

    return-object v0
.end method

.method protected getDefaultImageRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v3, 0x1

    const v4, 0x3f333333

    const v5, -0x420a3d71

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    return-object v0
.end method

.method protected isContactPhotoCircular()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 3
    .param p1    # Lcom/android/contacts/common/list/ContactEntry;

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mPhoneNumberString:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mPhoneNumberString:Ljava/lang/String;

    sget-object v1, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0e00f0

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoriteTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactTileView;->onFinishInflate()V

    const v0, 0x7f0e00ef

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView;->mShadowOverlay:Landroid/view/View;

    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteTileView$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteTileView$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteTileView;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
