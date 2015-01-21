.class Lcom/android/contacts/quickcontact/QuickContactActivity$12;
.super Landroid/os/AsyncTask;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->extractAndApplyTintFromPhotoViewAsynchronously()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

.field final synthetic val$imageViewDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 5
    .param p1    # [Ljava/lang/Void;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/model/Contact;->getThumbnailPhotoBinaryData()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->colorFromBitmap(Landroid/graphics/Bitmap;)I
    invoke-static {v2, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2200(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/graphics/Bitmap;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mMaterialColorMapUtils:Lcom/android/contacts/common/util/MaterialColorMapUtils;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/util/MaterialColorMapUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    invoke-virtual {v2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getColor()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mMaterialColorMapUtils:Lcom/android/contacts/common/util/MaterialColorMapUtils;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/util/MaterialColorMapUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->doInBackground([Ljava/lang/Void;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasComputedThemeColor:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->val$imageViewDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Lcom/android/contacts/widget/QuickContactImageView;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/QuickContactImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/widget/QuickContactImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasComputedThemeColor:Z
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2302(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->setThemeColor(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    invoke-static {v0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1500(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;->onPostExecute(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    return-void
.end method
