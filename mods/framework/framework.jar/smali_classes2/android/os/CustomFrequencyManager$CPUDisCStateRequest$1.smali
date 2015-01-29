.class Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$1;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->cancelFrequencyRequest()V

    return-void
.end method
