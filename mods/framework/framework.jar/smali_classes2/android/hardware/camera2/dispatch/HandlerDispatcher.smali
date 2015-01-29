.class public Landroid/hardware/camera2/dispatch/HandlerDispatcher;
.super Ljava/lang/Object;
.source "HandlerDispatcher.java"

# interfaces
.implements Landroid/hardware/camera2/dispatch/Dispatchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/dispatch/Dispatchable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerDispatcher"


# instance fields
.field private final mDispatchTarget:Landroid/hardware/camera2/dispatch/Dispatchable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;Landroid/os/Handler;)V
    .locals 1
    .param p2    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dispatchTarget must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/dispatch/Dispatchable;

    iput-object v0, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mDispatchTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    const-string v0, "handler must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/dispatch/HandlerDispatcher;)Landroid/hardware/camera2/dispatch/Dispatchable;
    .locals 1
    .param p0    # Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    iget-object v0, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mDispatchTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    return-object v0
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/reflect/Method;
    .param p2    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;-><init>(Landroid/hardware/camera2/dispatch/HandlerDispatcher;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return-object v0
.end method
