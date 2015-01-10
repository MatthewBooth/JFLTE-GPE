.class final Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;
.super Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback$Stub;
.source "DigitalPenOffScreenDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DimensionsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;->this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;

    invoke-direct {p0}, Lcodeaurora/ultrasound/IDigitalPenDimensionsCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$1;)V
    .locals 0
    .param p1    # Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;
    .param p2    # Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$1;

    invoke-direct {p0, p1}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;-><init>(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;)V

    return-void
.end method


# virtual methods
.method public onDimensionsChange(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    const-string v0, "DigitalPenOffScreenDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DimensionsCallback was called with w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;->this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;->this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;

    # getter for: Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;
    invoke-static {v0}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->access$100(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;)Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->setDimesionsLocked(II)V

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;->this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;->this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;

    # getter for: Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;
    invoke-static {v2}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->access$100(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;)Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;->this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DimensionsCallback;->this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;

    # getter for: Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->mDevice:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;
    invoke-static {v2}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->access$100(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;)Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
