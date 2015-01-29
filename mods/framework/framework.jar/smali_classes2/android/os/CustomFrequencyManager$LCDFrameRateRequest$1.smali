.class Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$1;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$1;->this$1:Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CustomFrequencyManager"

    const-string v1, "LCDFrameRateRequest:: mFrameRateReleaser -> cancelFrequencyRequest."

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest$1;->this$1:Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;->cancelFrequencyRequest()V

    return-void
.end method
