.class Lcom/android/server/VibratorService$1;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)V

    return-void
.end method
