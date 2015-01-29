.class Landroid/view/GLES20RecordingCanvas;
.super Landroid/view/GLES20Canvas;
.source "GLES20RecordingCanvas.java"


# static fields
.field private static final POOL_LIMIT:I = 0x19

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/GLES20RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mNode:Landroid/view/RenderNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/GLES20Canvas;-><init>()V

    return-void
.end method

.method static obtain(Landroid/view/RenderNode;)Landroid/view/GLES20RecordingCanvas;
    .locals 3
    .param p0    # Landroid/view/RenderNode;

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "node cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GLES20RecordingCanvas;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/GLES20RecordingCanvas;

    invoke-direct {v0}, Landroid/view/GLES20RecordingCanvas;-><init>()V

    :cond_1
    iput-object p0, v0, Landroid/view/GLES20RecordingCanvas;->mNode:Landroid/view/RenderNode;

    return-object v0
.end method


# virtual methods
.method finishRecording()J
    .locals 2

    iget-wide v0, p0, Landroid/view/GLES20RecordingCanvas;->mRenderer:J

    invoke-static {v0, v1}, Landroid/view/GLES20RecordingCanvas;->nFinishRecording(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mNode:Landroid/view/RenderNode;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method recycle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mNode:Landroid/view/RenderNode;

    sget-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method
