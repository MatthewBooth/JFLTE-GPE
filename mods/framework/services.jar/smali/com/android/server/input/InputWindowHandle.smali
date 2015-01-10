.class public final Lcom/android/server/input/InputWindowHandle;
.super Ljava/lang/Object;
.source "InputWindowHandle.java"


# instance fields
.field public canReceiveKeys:Z

.field public dispatchingTimeoutNanos:J

.field public final displayId:I

.field public frameBottom:I

.field public frameLeft:I

.field public frameRight:I

.field public frameTop:I

.field public hasFocus:Z

.field public hasWallpaper:Z

.field public final inputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field public inputChannel:Landroid/view/InputChannel;

.field public inputFeatures:I

.field public layer:I

.field public layoutParamsFlags:I

.field public layoutParamsPrivateFlags:I

.field public layoutParamsType:I

.field public name:Ljava/lang/String;

.field public ownerPid:I

.field public ownerUid:I

.field public paused:Z

.field private ptr:J

.field public scaleFactor:F

.field public final touchableRegion:Landroid/graphics/Region;

.field public visible:Z

.field public final windowState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V
    .locals 1
    .param p1    # Lcom/android/server/input/InputApplicationHandle;
    .param p2    # Ljava/lang/Object;
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iput-object p1, p0, Lcom/android/server/input/InputWindowHandle;->inputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-object p2, p0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/input/InputWindowHandle;->displayId:I

    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/input/InputWindowHandle;->nativeDispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
