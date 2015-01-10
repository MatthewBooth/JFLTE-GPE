.class Lcom/android/server/AssetAtlasService$Renderer;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private mAtlasBitmap:Landroid/graphics/Bitmap;

.field private final mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeBitmap:J

.field private final mPixelCount:I

.field final synthetic this$0:Lcom/android/server/AssetAtlasService;


# direct methods
.method constructor <init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V
    .locals 0
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    return-void
.end method

.method private acquireCanvas(II)Landroid/graphics/Canvas;
    .locals 4
    .param p1    # I
    .param p2    # I

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    # invokes: Lcom/android/server/AssetAtlasService;->nAcquireAtlasCanvas(Landroid/graphics/Canvas;II)J
    invoke-static {v0, p1, p2}, Lcom/android/server/AssetAtlasService;->access$700(Landroid/graphics/Canvas;II)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    return-object v0
.end method

.method private releaseCanvas(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;

    iget-wide v0, p0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    # invokes: Lcom/android/server/AssetAtlasService;->nReleaseAtlasCanvas(Landroid/graphics/Canvas;J)V
    invoke-static {p1, v0, v1}, Lcom/android/server/AssetAtlasService;->access$800(Landroid/graphics/Canvas;J)V

    return-void
.end method

.method private renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z
    .locals 27
    .param p1    # Landroid/view/GraphicBuffer;
    .param p2    # Landroid/graphics/Atlas;
    .param p3    # I

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    new-instance v22, Landroid/graphics/PorterDuffXfermode;

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v22 .. v23}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getWidth()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/AssetAtlasService$Renderer;->acquireCanvas(II)Landroid/graphics/Canvas;

    move-result-object v6

    if-nez v6, :cond_0

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_0
    new-instance v12, Landroid/graphics/Atlas$Entry;

    invoke-direct {v12}, Landroid/graphics/Atlas$Entry;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v22, v0

    mul-int/lit8 v23, p3, 0x4

    move/from16 v0, v23

    new-array v0, v0, [J

    move-object/from16 v23, v0

    # setter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[J
    invoke-static/range {v22 .. v23}, Lcom/android/server/AssetAtlasService;->access$402(Lcom/android/server/AssetAtlasService;[J)[J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[J
    invoke-static/range {v22 .. v22}, Lcom/android/server/AssetAtlasService;->access$400(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v4

    const/4 v14, 0x0

    const/16 v18, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    const/4 v13, 0x0

    move v15, v14

    :goto_1
    if-ge v13, v7, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v12}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[J
    invoke-static/range {v22 .. v22}, Lcom/android/server/AssetAtlasService;->access$400(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v15, v0, :cond_3

    # invokes: Lcom/android/server/AssetAtlasService;->deleteDataFile()V
    invoke-static {}, Lcom/android/server/AssetAtlasService;->access$500()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    # invokes: Lcom/android/server/AssetAtlasService;->nUploadAtlas(Landroid/view/GraphicBuffer;J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/AssetAtlasService;->access$600(Landroid/view/GraphicBuffer;J)Z

    move-result v18

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v22, v8, v20

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x447a0000

    div-float v22, v22, v23

    const/high16 v23, 0x447a0000

    div-float v17, v22, v23

    sub-long v22, v10, v8

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x447a0000

    div-float v22, v22, v23

    const/high16 v23, 0x447a0000

    div-float v19, v22, v23

    const-string v22, "Atlas"

    const-string v23, "Rendered atlas in %.2fms (%.2f+%.2fms)"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-float v26, v17, v19

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    iget v0, v12, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, v12, Landroid/graphics/Atlas$Entry;->rotated:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v22, 0x42b40000

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_4
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v6, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v14, v15, 0x1

    :try_start_3
    iget-wide v0, v5, Landroid/graphics/Bitmap;->mNativeBitmap:J

    move-wide/from16 v22, v0

    aput-wide v22, v4, v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v15, v14, 0x1

    :try_start_4
    iget v0, v12, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v4, v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v14, v15, 0x1

    :try_start_5
    iget v0, v12, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v4, v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v15, v14, 0x1

    :try_start_6
    iget-boolean v0, v12, Landroid/graphics/Atlas$Entry;->rotated:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    const-wide/16 v22, 0x1

    :goto_2
    aput-wide v22, v4, v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    move v14, v15

    add-int/lit8 v13, v13, 0x1

    move v15, v14

    goto/16 :goto_1

    :cond_6
    const-wide/16 v22, 0x0

    goto :goto_2

    :catchall_0
    move-exception v22

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;)V

    throw v22

    :catchall_1
    move-exception v22

    move v14, v15

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget-object v3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    iget-object v5, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/AssetAtlasService;->access$000(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/AssetAtlasService;->chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AssetAtlasService;->access$100(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v1

    const-string v2, "Atlas"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    const/16 v5, 0x100

    invoke-static {v3, v4, v6, v5}, Landroid/view/GraphicBuffer;->create(IIII)Landroid/view/GraphicBuffer;

    move-result-object v3

    # setter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2, v3}, Lcom/android/server/AssetAtlasService;->access$202(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;

    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/graphics/Atlas;

    iget-object v2, v1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    iget v5, v1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AssetAtlasService$Renderer;->renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$300(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
