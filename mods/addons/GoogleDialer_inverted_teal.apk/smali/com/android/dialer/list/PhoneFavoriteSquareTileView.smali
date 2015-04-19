.class public Lcom/android/dialer/list/PhoneFavoriteSquareTileView;
.super Lcom/android/dialer/list/PhoneFavoriteTileView;
.source "PhoneFavoriteSquareTileView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactEntry:Lcom/android/contacts/common/list/ContactEntry;

.field private final mHeightToWidthRatio:F

.field private mSecondaryButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/list/PhoneFavoriteTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mHeightToWidthRatio:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 0
    .param p0    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->launchQuickContact()V

    return-void
.end method

.method private launchQuickContact()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getApproximateImageSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContactEntry()Lcom/android/contacts/common/list/ContactEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mContactEntry:Lcom/android/contacts/common/list/ContactEntry;

    return-object v0
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/list/ContactEntry;

    invoke-super {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mSecondaryButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/dialer/list/PhoneFavoriteSquareTileView$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteSquareTileView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mContactEntry:Lcom/android/contacts/common/list/ContactEntry;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->onFinishInflate()V

    const v2, 0x7f0e00a7

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const v2, 0x7f0e00ab

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const v2, 0x7f0e00f1

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mSecondaryButton:Landroid/widget/ImageButton;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1    # I
    .param p2    # I

    const/high16 v7, 0x40000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mHeightToWidthRatio:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-int v1, v4

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->setMeasuredDimension(II)V

    return-void
.end method
