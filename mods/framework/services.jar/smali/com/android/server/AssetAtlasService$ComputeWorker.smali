.class Lcom/android/server/AssetAtlasService$ComputeWorker;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputeWorker"
.end annotation


# instance fields
.field private final mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnd:I

.field private final mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AssetAtlasService$WorkerResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mStart:I

.field private final mStep:I

.field private final mThreshold:I


# direct methods
.method constructor <init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p5    # I
    .param p7    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AssetAtlasService$WorkerResult;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStart:I

    iput p2, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mEnd:I

    iput p3, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStep:I

    iput-object p4, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    iput-object p6, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mResults:Ljava/util/List;

    iput-object p7, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    int-to-float v1, p5

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    float-to-int v0, v1

    :goto_0
    const/high16 v1, 0x400000

    if-le v0, v1, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mThreshold:I

    return-void
.end method

.method private packBitmaps(Landroid/graphics/Atlas$Type;IILandroid/graphics/Atlas$Entry;)I
    .locals 7
    .param p1    # Landroid/graphics/Atlas$Type;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/graphics/Atlas$Entry;

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Atlas;

    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;II)V

    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6, p4}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v8, "Atlas"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Running "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Atlas$Entry;

    invoke-direct {v2}, Landroid/graphics/Atlas$Entry;-><init>()V

    invoke-static {}, Landroid/graphics/Atlas$Type;->values()[Landroid/graphics/Atlas$Type;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v6, v0, v4

    iget v7, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStart:I

    :goto_1
    iget v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mEnd:I

    if-ge v7, v8, :cond_3

    const/16 v3, 0x300

    :goto_2
    const/16 v8, 0x800

    if-ge v3, v8, :cond_2

    mul-int v8, v7, v3

    iget v9, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mThreshold:I

    if-gt v8, v9, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x40

    goto :goto_2

    :cond_1
    invoke-direct {p0, v6, v7, v3, v2}, Lcom/android/server/AssetAtlasService$ComputeWorker;->packBitmaps(Landroid/graphics/Atlas$Type;IILandroid/graphics/Atlas$Entry;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mResults:Ljava/util/List;

    new-instance v9, Lcom/android/server/AssetAtlasService$WorkerResult;

    invoke-direct {v9, v6, v7, v3, v1}, Lcom/android/server/AssetAtlasService$WorkerResult;-><init>(Landroid/graphics/Atlas$Type;III)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v1, v8, :cond_0

    :cond_2
    iget v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStep:I

    add-int/2addr v7, v8

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_5
    return-void
.end method
