.class abstract Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;
.source "CmdProcessStressTest.java"


# instance fields
.field private mChange:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    return-void
.end method


# virtual methods
.method protected abstract clear()V
.end method

.method protected abstract getType()I
.end method

.method protected abstract registerListener()V
.end method

.method public final run()V
    .locals 4

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->getDelayTime()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->registerListener()V

    :goto_0
    invoke-super {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->isStopTest()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->clear()V

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->unregisterListener()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected abstract unregisterListener()V
.end method
