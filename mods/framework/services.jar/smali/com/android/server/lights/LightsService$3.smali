.class Lcom/android/server/lights/LightsService$3;
.super Landroid/os/Handler;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/lights/LightsService$LightImpl;

    # invokes: Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V
    invoke-static {v0}, Lcom/android/server/lights/LightsService$LightImpl;->access$300(Lcom/android/server/lights/LightsService$LightImpl;)V

    return-void
.end method
