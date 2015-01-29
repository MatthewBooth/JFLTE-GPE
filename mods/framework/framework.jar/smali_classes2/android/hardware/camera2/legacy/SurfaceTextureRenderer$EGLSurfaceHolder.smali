.class Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
.super Ljava/lang/Object;
.source "SurfaceTextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EGLSurfaceHolder"
.end annotation


# instance fields
.field eglSurface:Landroid/opengl/EGLSurface;

.field height:I

.field surface:Landroid/view/Surface;

.field final synthetic this$0:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

.field width:I


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->this$0:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$1;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
    .param p2    # Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$1;

    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;-><init>(Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;)V

    return-void
.end method
