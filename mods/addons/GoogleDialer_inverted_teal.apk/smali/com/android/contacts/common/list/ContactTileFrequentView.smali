.class public Lcom/android/contacts/common/list/ContactTileFrequentView;
.super Lcom/android/contacts/common/list/ContactTileView;
.source "ContactTileFrequentView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getApproximateImageSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileFrequentView;->getPhotoView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/ViewUtil;->getConstantPreLayoutWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
