.class final enum Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level$6;
.super Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;-><init>(Ljava/lang/String;ILandroid/hardware/contextaware/utilbundle/logger/CaLogger$1;)V

    return-void
.end method


# virtual methods
.method consoleLogging(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    # getter for: Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->mLevel:I
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->access$200()I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level$6;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "CAE"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method fileLogging(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    # getter for: Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->mLevel:I
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->access$200()I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level$6;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Landroid/hardware/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v1

    const-string v2, "CAELogger"

    const-string v3, "X"

    const-string v4, "CAE"

    const-string v5, ""

    # invokes: Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, p1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/utilbundle/logger/CaFileLogger;->logging(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
