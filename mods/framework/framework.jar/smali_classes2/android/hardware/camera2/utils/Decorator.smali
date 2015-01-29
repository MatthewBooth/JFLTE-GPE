.class public Landroid/hardware/camera2/utils/Decorator;
.super Ljava/lang/Object;
.source "Decorator.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/Decorator$DecoratorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Landroid/hardware/camera2/utils/Decorator$DecoratorListener;)V
    .locals 0
    .param p2    # Landroid/hardware/camera2/utils/Decorator$DecoratorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/hardware/camera2/utils/Decorator$DecoratorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/utils/Decorator;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    return-void
.end method

.method public static newInstance(Ljava/lang/Object;Landroid/hardware/camera2/utils/Decorator$DecoratorListener;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/hardware/camera2/utils/Decorator$DecoratorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/hardware/camera2/utils/Decorator$DecoratorListener;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/utils/Decorator;

    invoke-direct {v2, p0, p1}, Landroid/hardware/camera2/utils/Decorator;-><init>(Ljava/lang/Object;Landroid/hardware/camera2/utils/Decorator$DecoratorListener;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/reflect/Method;
    .param p3    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    invoke-interface {v3, p2, p3}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onBeforeInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mObject:Ljava/lang/Object;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    invoke-interface {v3, p2, p3, v1}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onAfterInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    invoke-interface {v3, p2, p3}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onFinally(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    invoke-interface {v3, p2, p3, v2}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onCatchException(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    invoke-interface {v4, p2, p3}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onFinally(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    throw v3

    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/utils/Decorator;->mListener:Landroid/hardware/camera2/utils/Decorator$DecoratorListener;

    invoke-interface {v3, p2, p3}, Landroid/hardware/camera2/utils/Decorator$DecoratorListener;->onFinally(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0
.end method
