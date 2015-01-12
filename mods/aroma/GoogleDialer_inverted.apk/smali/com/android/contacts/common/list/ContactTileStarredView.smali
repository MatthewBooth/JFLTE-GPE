.class public Lcom/android/contacts/common/list/ContactTileStarredView;
.super Lcom/android/contacts/common/list/ContactTileView;
.source "ContactTileStarredView.java"


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

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileStarredView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-interface {v0}, Lcom/android/contacts/common/list/ContactTileView$Listener;->getApproximateTileWidth()I

    move-result v0

    return v0
.end method

.method protected getDefaultImageRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x1

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const v4, 0x3f4ccccd

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
