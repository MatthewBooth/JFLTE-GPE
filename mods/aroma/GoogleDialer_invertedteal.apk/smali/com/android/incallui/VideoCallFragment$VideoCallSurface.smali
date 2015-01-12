.class Lcom/android/incallui/VideoCallFragment$VideoCallSurface;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoCallSurface"
.end annotation


# instance fields
.field private mSavedSurface:Landroid/view/Surface;

.field private mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceId:I

.field private mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lcom/android/incallui/VideoCallFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/VideoCallFragment;ILandroid/view/TextureView;)V
    .locals 6
    .param p2    # I
    .param p3    # Landroid/view/TextureView;

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallFragment;ILandroid/view/TextureView;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/VideoCallFragment;ILandroid/view/TextureView;II)V
    .locals 0
    .param p2    # I
    .param p3    # Landroid/view/TextureView;
    .param p4    # I
    .param p5    # I

    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # setter for: Lcom/android/incallui/VideoCallFragment;->mWidth:I
    invoke-static {p1, p4}, Lcom/android/incallui/VideoCallFragment;->access$002(Lcom/android/incallui/VideoCallFragment;I)I

    # setter for: Lcom/android/incallui/VideoCallFragment;->mHeight:I
    invoke-static {p1, p5}, Lcom/android/incallui/VideoCallFragment;->access$102(Lcom/android/incallui/VideoCallFragment;I)I

    iput p2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {p0, p3}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    return-void
.end method

.method private createSurface()Z
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/VideoCallFragment;

    # getter for: Lcom/android/incallui/VideoCallFragment;->mWidth:I
    invoke-static {v0}, Lcom/android/incallui/VideoCallFragment;->access$000(Lcom/android/incallui/VideoCallFragment;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/VideoCallFragment;

    # getter for: Lcom/android/incallui/VideoCallFragment;->mHeight:I
    invoke-static {v0}, Lcom/android/incallui/VideoCallFragment;->access$100(Lcom/android/incallui/VideoCallFragment;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/VideoCallFragment;

    # getter for: Lcom/android/incallui/VideoCallFragment;->mWidth:I
    invoke-static {v1}, Lcom/android/incallui/VideoCallFragment;->access$000(Lcom/android/incallui/VideoCallFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/VideoCallFragment;

    # getter for: Lcom/android/incallui/VideoCallFragment;->mHeight:I
    invoke-static {v2}, Lcom/android/incallui/VideoCallFragment;->access$100(Lcom/android/incallui/VideoCallFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceClick(I)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1    # Landroid/graphics/SurfaceTexture;
    .param p2    # I
    .param p3    # I

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->createSurface()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    iget v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceCreated(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceDestroyed(I)V

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public recreateView(Landroid/view/TextureView;)V
    .locals 2
    .param p1    # Landroid/view/TextureView;

    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public setDoneWithSurface()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method public setSurfaceDimensions(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/VideoCallFragment;

    # setter for: Lcom/android/incallui/VideoCallFragment;->mWidth:I
    invoke-static {v0, p1}, Lcom/android/incallui/VideoCallFragment;->access$002(Lcom/android/incallui/VideoCallFragment;I)I

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/VideoCallFragment;

    # setter for: Lcom/android/incallui/VideoCallFragment;->mHeight:I
    invoke-static {v0, p2}, Lcom/android/incallui/VideoCallFragment;->access$102(Lcom/android/incallui/VideoCallFragment;I)I

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->createSurface()Z

    :cond_0
    return-void
.end method
