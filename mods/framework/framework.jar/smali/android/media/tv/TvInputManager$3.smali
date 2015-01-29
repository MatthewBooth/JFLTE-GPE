.class Landroid/media/tv/TvInputManager$3;
.super Landroid/media/tv/ITvInputHardwareCallback$Stub;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager;->acquireTvInputHardware(ILandroid/media/tv/TvInputManager$HardwareCallback;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputManager$Hardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager;

.field final synthetic val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager;Landroid/media/tv/TvInputManager$HardwareCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputManager$3;->this$0:Landroid/media/tv/TvInputManager;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$3;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardwareCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReleased()V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputManager$3;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$HardwareCallback;->onReleased()V

    return-void
.end method

.method public onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    .locals 1
    .param p1    # [Landroid/media/tv/TvStreamConfig;

    iget-object v0, p0, Landroid/media/tv/TvInputManager$3;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$HardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V

    return-void
.end method
