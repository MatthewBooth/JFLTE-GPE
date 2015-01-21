.class public abstract Lcom/android/contacts/common/list/ContactTileView;
.super Landroid/widget/FrameLayout;
.source "ContactTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHorizontalDivider:Landroid/view/View;

.field protected mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoneLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mPushState:Landroid/view/View;

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/ContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method


# virtual methods
.method protected configureViewForImage(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/contacts/common/list/ContactTileView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactTileView$1;-><init>(Lcom/android/contacts/common/list/ContactTileView;)V

    return-object v0
.end method

.method protected abstract getApproximateImageSize()I
.end method

.method protected getDefaultImageRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->isContactPhotoCircular()Z

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getNameForView(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;

    return-object p1
.end method

.method protected getPhotoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method protected isContactPhotoCircular()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract isDarkTheme()Z
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 7
    .param p1    # Lcom/android/contacts/common/list/ContactEntry;

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileView;->getNameForView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->lookupUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->status:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/list/ContactTileView;->getDefaultImageRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v6

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->configureViewForImage(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->getApproximateImageSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->isContactPhotoCircular()Z

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->getApproximateImageSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->isContactPhotoCircular()Z

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/android/contacts/common/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v1, "contactPhotoManager not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_b
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v1, 0x7f0e004d

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mName:Landroid/widget/TextView;

    const v1, 0x7f0e004f

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    const v1, 0x7f0e004c

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0e0058

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    const v1, 0x7f0e0051

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    const v1, 0x7f0e0050

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    const v1, 0x7f0e0056

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPushState:Landroid/view/View;

    const v1, 0x7f0e0052

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->createClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setHorizontalDividerVisibility(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/list/ContactTileView$Listener;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-void
.end method

.method public setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/ContactPhotoManager;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method
