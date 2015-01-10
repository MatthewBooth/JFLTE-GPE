.class final Lcom/android/systemui/LoadAverageService$CpuTracker;
.super Lcom/android/internal/os/ProcessCpuTracker;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CpuTracker"
.end annotation


# instance fields
.field mLoadText:Ljava/lang/String;

.field mLoadWidth:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public onLoadChanged(FFF)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
