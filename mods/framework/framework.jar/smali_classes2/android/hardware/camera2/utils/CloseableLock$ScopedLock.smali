.class public Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
.super Ljava/lang/Object;
.source "CloseableLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/CloseableLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScopedLock"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/utils/CloseableLock;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/utils/CloseableLock;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;->this$0:Landroid/hardware/camera2/utils/CloseableLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$1;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/utils/CloseableLock;
    .param p2    # Landroid/hardware/camera2/utils/CloseableLock$1;

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;->this$0:Landroid/hardware/camera2/utils/CloseableLock;

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CloseableLock;->releaseLock()V

    return-void
.end method
