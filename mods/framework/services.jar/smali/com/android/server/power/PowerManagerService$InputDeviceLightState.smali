.class final Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceLightState"
.end annotation


# static fields
.field public static final LIGHT_STATE_OFF:I = 0x0

.field public static final LIGHT_STATE_ON:I = 0x1

.field public static final MSG_LIGHT_TIMEOUT:I


# instance fields
.field private mHandlerInputDeviceLight:Landroid/os/Handler;

.field private mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

.field private final mInputDeviceLight:Lcom/android/server/lights/Light;

.field private mInputDeviceLightState:I

.field private mInputDeviceLightTimeout:I

.field private mIsForceDisable:Z

.field private mIsKeepLight:Z

.field private mIsMsgPending:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/lights/LightsManager;I)V
    .locals 2
    .param p2    # Lcom/android/server/lights/LightsManager;
    .param p3    # I

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLight:Lcom/android/server/lights/Light;

    iput v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsForceDisable:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InputDeviceLight"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;-><init>(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Landroid/os/Looper;Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I
    .locals 1
    .param p0    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V
    .locals 0
    .param p0    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V
    .locals 0
    .param p0    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z
    .locals 1
    .param p0    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightKeep()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I
    .locals 1
    .param p0    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightState()I

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .locals 0
    .param p0    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->handleInputDeviceLightTimeout()V

    return-void
.end method

.method private getInputDeviceLightKeep()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    return v0
.end method

.method private getInputDeviceLightState()I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    return v0
.end method

.method private getInputDeviceLightTimeout()I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    return v0
.end method

.method private handleInputDeviceLightTimeout()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    :cond_0
    return-void
.end method

.method private setInputDeviceLightForceDisable(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsForceDisable:Z

    return-void
.end method

.method private setInputDeviceLightKeep(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsKeepLight:Z

    return-void
.end method

.method private setInputDeviceLightTimeout(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    :cond_0
    return-void
.end method


# virtual methods
.method public setInputDeviceLightOn(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p1, v4, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$7000(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsForceDisable:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$7100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mHandlerInputDeviceLight:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mIsMsgPending:Z

    :cond_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLight:Lcom/android/server/lights/Light;

    invoke-virtual {v1, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    iput p1, p0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->mInputDeviceLightState:I

    goto :goto_0
.end method
