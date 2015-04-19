.class public abstract Lcom/android/contacts/editor/BaseRawContactEditorView;
.super Landroid/widget/LinearLayout;
.source "BaseRawContactEditorView.java"


# instance fields
.field private mBody:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field private mExpanded:Z

.field private mHasPhotoEditor:Z

.field private mPhoto:Lcom/android/contacts/editor/PhotoEditorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    return-void
.end method


# virtual methods
.method public getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    return-object v0
.end method

.method public abstract getRawContactId()J
.end method

.method public hasSetPhoto()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoEditorView;->hasSetPhoto()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mBody:Landroid/view/View;

    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mDivider:Landroid/view/View;

    const v0, 0x7f0e00d8

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 0
    .param p1    # Landroid/database/Cursor;

    return-void
.end method

.method protected setHasPhotoEditor(Z)V
    .locals 2
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    iget-object v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/PhotoEditorView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public abstract setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
.end method
