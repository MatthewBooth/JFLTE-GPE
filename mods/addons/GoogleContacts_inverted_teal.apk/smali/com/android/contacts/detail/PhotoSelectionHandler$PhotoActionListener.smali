.class public abstract Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/PhotoSelectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PhotoActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentPhotoUri()Landroid/net/Uri;
.end method

.method public abstract onPhotoSelected(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract onPhotoSelectionDismissed()V
.end method

.method public onPickFromGalleryChosen()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    # getter for: Lcom/android/contacts/detail/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$000(Lcom/android/contacts/detail/PhotoSelectionHandler;)Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromGalleryActivity(Landroid/net/Uri;)V
    invoke-static {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$200(Lcom/android/contacts/detail/PhotoSelectionHandler;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0156

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onRemovePictureChosen()V
    .locals 0

    return-void
.end method

.method public onTakePhotoChosen()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    # getter for: Lcom/android/contacts/detail/PhotoSelectionHandler;->mTempPhotoUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$000(Lcom/android/contacts/detail/PhotoSelectionHandler;)Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/android/contacts/detail/PhotoSelectionHandler;->startTakePhotoActivity(Landroid/net/Uri;)V
    invoke-static {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$100(Lcom/android/contacts/detail/PhotoSelectionHandler;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0156

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onUseAsPrimaryChosen()V
    .locals 0

    return-void
.end method
