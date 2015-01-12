.class public Lcom/android/contacts/editor/PhotoEditorView;
.super Landroid/widget/LinearLayout;
.source "PhotoEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;


# instance fields
.field private mEntry:Lcom/android/contacts/common/model/ValuesDelta;

.field private mFrameView:Landroid/view/View;

.field private mHasSetPhoto:Z

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field private mPhotoImageView:Landroid/widget/ImageView;

.field private mReadOnly:Z

.field private mTriangleAffordance:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/PhotoEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1
    .param p0    # Lcom/android/contacts/editor/PhotoEditorView;

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method


# virtual methods
.method public clearAllFields()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    return-void
.end method

.method public deleteEditor()V
    .locals 0

    return-void
.end method

.method public editNewlyAddedField()V
    .locals 0

    return-void
.end method

.method public hasSetPhoto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0e00b7

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mTriangleAffordance:Landroid/view/View;

    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const v0, 0x7f0e00b6

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/PhotoEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/PhotoEditorView$1;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected resetDefault()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public setDeletable(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 5
    .param p1    # Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v3, 0x4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mTriangleAffordance:Landroid/view/View;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v5, "data15"

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v6, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v5}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/ValuesDelta;->setSuperPrimary(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/model/ValuesDelta;->setPhoto([B)V

    goto :goto_0
.end method

.method public setSuperPrimary(Z)V
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v2, "is_super_primary"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 5
    .param p1    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p4    # Z
    .param p5    # Lcom/android/contacts/editor/ViewIdGenerator;

    const/4 v4, 0x0

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    iput-boolean p4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    invoke-virtual {p5, p3, p1, p2, v4}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setId(I)V

    if-eqz p2, :cond_1

    const-string v2, "data15"

    invoke-virtual {p2, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_0
.end method
