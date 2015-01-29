.class Landroid/hardware/scontext/SContextUpdateContext;
.super Ljava/lang/Object;
.source "SContextUpdateContext.java"


# static fields
.field private static instance:Landroid/hardware/scontext/SContextUpdateContext;

.field private static mListener:Landroid/hardware/scontext/ISContextListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/scontext/SContextUpdateContext;
    .locals 2

    const-class v1, Landroid/hardware/scontext/SContextUpdateContext;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/hardware/scontext/SContextUpdateContext;->instance:Landroid/hardware/scontext/SContextUpdateContext;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextUpdateContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextUpdateContext;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextUpdateContext;->instance:Landroid/hardware/scontext/SContextUpdateContext;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/hardware/scontext/SContextUpdateContext;->instance:Landroid/hardware/scontext/SContextUpdateContext;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeListener()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/hardware/scontext/ISContextListener;)V
    .locals 1
    .param p1    # Landroid/hardware/scontext/ISContextListener;

    sget-object v0, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextUpdateContext;->removeListener()V

    :cond_0
    sput-object p1, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    return-void
.end method

.method reportMessage(ILandroid/hardware/scontext/ISContextContexts;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/hardware/scontext/ISContextContexts;

    sget-object v0, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/scontext/ISContextListener;->sendEvent(ILandroid/hardware/scontext/ISContextContexts;)V

    :cond_0
    return-void
.end method
