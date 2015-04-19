.class public Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;
.super Lcom/android/contacts/common/list/ContactTileView;
.source "ContactTilePhoneFrequentView.java"


# instance fields
.field private mPhoneNumberString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mPhoneNumberString:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;-><init>(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)V

    return-object v0
.end method

.method protected getApproximateImageSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/ViewUtil;->getConstantPreLayoutWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 1
    .param p1    # Lcom/android/contacts/common/list/ContactEntry;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mPhoneNumberString:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mPhoneNumberString:Ljava/lang/String;

    :cond_0
    return-void
.end method
