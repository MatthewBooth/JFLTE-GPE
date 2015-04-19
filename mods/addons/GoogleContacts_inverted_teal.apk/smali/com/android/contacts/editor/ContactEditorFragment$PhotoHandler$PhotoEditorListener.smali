.class final Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;
.super Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoEditorListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;Lcom/android/contacts/editor/ContactEditorFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .param p2    # Lcom/android/contacts/editor/ContactEditorFragment$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)V

    return-void
.end method


# virtual methods
.method public getCurrentPhotoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 0
    .param p1    # Lcom/android/contacts/editor/Editor;

    return-void
.end method

.method public onPhotoSelected(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$2300(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-wide v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;Landroid/net/Uri;)V
    invoke-static {v1, v2, v3, v0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2400(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-static {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1602(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)V

    return-void
.end method

.method public onPhotoSelectionDismissed()V
    .locals 0

    return-void
.end method

.method public onRemovePictureChosen()V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$1900(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2200(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-wide v2, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)V

    return-void
.end method

.method public onRequest(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1800(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$1900(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onUseAsPrimaryChosen()V
    .locals 6

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v5, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->access$1900(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v5

    if-ne v2, v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/contacts/editor/PhotoEditorView;->setSuperPrimary(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)V

    return-void
.end method
