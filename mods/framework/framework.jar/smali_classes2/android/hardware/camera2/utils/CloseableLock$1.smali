.class Landroid/hardware/camera2/utils/CloseableLock$1;
.super Ljava/lang/ThreadLocal;
.source "CloseableLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/CloseableLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/utils/CloseableLock;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/utils/CloseableLock;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/utils/CloseableLock$1;->this$0:Landroid/hardware/camera2/utils/CloseableLock;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/camera2/utils/CloseableLock$1;->initialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
