.class public Lcom/android/incallui/VideoCallFragment;
.super Lcom/android/incallui/BaseFragment;
.source "VideoCallFragment.java"

# interfaces
.implements Lcom/android/incallui/VideoCallPresenter$VideoCallUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoCallFragment$VideoCallSurface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/VideoCallPresenter;",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;",
        ">;",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;"
    }
.end annotation


# static fields
.field private static sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

.field private static sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

.field private static sVideoSurfacesInUse:Z


# instance fields
.field private mHeight:I

.field private mIsActivityRestart:Z

.field private mIsLandscape:Z

.field private mIsLayoutComplete:Z

.field private mVideoViews:Landroid/view/View;

.field private mVideoViewsStub:Landroid/view/ViewStub;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    iput v1, p0, Lcom/android/incallui/VideoCallFragment;->mWidth:I

    iput v1, p0, Lcom/android/incallui/VideoCallFragment;->mHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VideoCallFragment;)I
    .locals 1
    .param p0    # Lcom/android/incallui/VideoCallFragment;

    iget v0, p0, Lcom/android/incallui/VideoCallFragment;->mWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/VideoCallFragment;I)I
    .locals 0
    .param p0    # Lcom/android/incallui/VideoCallFragment;
    .param p1    # I

    iput p1, p0, Lcom/android/incallui/VideoCallFragment;->mWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/VideoCallFragment;)I
    .locals 1
    .param p0    # Lcom/android/incallui/VideoCallFragment;

    iget v0, p0, Lcom/android/incallui/VideoCallFragment;->mHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/VideoCallFragment;I)I
    .locals 0
    .param p0    # Lcom/android/incallui/VideoCallFragment;
    .param p1    # I

    iput p1, p0, Lcom/android/incallui/VideoCallFragment;->mHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/VideoCallFragment;Landroid/view/View;)V
    .locals 0
    .param p0    # Lcom/android/incallui/VideoCallFragment;
    .param p1    # Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallFragment;->centerDisplayView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/incallui/VideoCallFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/incallui/VideoCallFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    return p1
.end method

.method private centerDisplayView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/high16 v4, 0x40000000

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->isRtl()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getSpaceBesideCallCard()F

    move-result v1

    iget-boolean v3, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float v4, v1, v4

    sub-float v2, v3, v4

    if-eqz v0, :cond_0

    neg-float v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float v4, v1, v4

    sub-float v2, v3, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private getScreenSize()Landroid/graphics/Point;
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v1
.end method

.method private inflateVideoCallViews()V
    .locals 9

    const v8, 0x7f0e011f

    const/4 v2, 0x1

    const v3, 0x7f0e011e

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->getScreenSize()Landroid/graphics/Point;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/VideoCallFragment;->setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V

    sget-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/TextureView;

    iget v4, v7, Landroid/graphics/Point;->x:I

    iget v5, v7, Landroid/graphics/Point;->y:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallFragment;ILandroid/view/TextureView;II)V

    sput-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    new-instance v1, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallFragment;ILandroid/view/TextureView;)V

    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    sput-boolean v2, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    goto :goto_0
.end method

.method private setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V
    .locals 3
    .param p1    # Landroid/view/TextureView;
    .param p2    # Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/TextureView;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallFragment;->centerDisplayView(Landroid/view/View;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public cleanupSurfaces()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setDoneWithSurface()V

    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setDoneWithSurface()V

    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->createPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/VideoCallPresenter;
    .locals 1

    new-instance v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/VideoCallPresenter;-><init>()V

    return-object v0
.end method

.method public getDisplayVideoSurface()Landroid/view/Surface;
    .locals 1

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewVideoSurface()Landroid/view/Surface;
    .locals 1

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getUi()Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    move-result-object v0

    return-object v0
.end method

.method getUi()Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    .locals 0

    return-object p0
.end method

.method public isActivityRestart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mIsActivityRestart:Z

    return v0
.end method

.method public isDisplayVideoSurfaceCreated()Z
    .locals 1

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewVideoSurfaceCreated()Z
    .locals 1

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->init(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mIsActivityRestart:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v2, 0x7f040043

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/VideoCallFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/VideoCallFragment$1;-><init>(Lcom/android/incallui/VideoCallFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0e011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViewsStub:Landroid/view/ViewStub;

    sget-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->inflateVideoCallViews()V

    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    sget-object v2, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v2, p1, p2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setSurfaceDimensions(II)V

    goto :goto_0
.end method

.method public showVideoUi(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->inflateVideoCallViews()V

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->cleanupSurfaces()V

    goto :goto_1
.end method
