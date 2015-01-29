.class Landroid/hardware/camera2/utils/CameraServiceBinderDecorator$CameraServiceBinderDecoratorListener;
.super Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;
.source "CameraServiceBinderDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CameraServiceBinderDecoratorListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCatchException(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1    # Ljava/lang/reflect/Method;
    .param p2    # [Ljava/lang/Object;
    .param p3    # Ljava/lang/Throwable;

    instance-of v0, p3, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    instance-of v0, p3, Landroid/os/RemoteException;

    if-eqz v0, :cond_0

    const-string v0, "CameraServiceBinderDecorator"

    const-string v1, "Unexpected RemoteException from camera service call."

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
