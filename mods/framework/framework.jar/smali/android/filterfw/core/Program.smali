.class public abstract Landroid/filterfw/core/Program;
.super Ljava/lang/Object;
.source "Program.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHostValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .locals 2
    .param p1    # Landroid/filterfw/core/Frame;
    .param p2    # Landroid/filterfw/core/Frame;

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/filterfw/core/Frame;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    return-void
.end method

.method public abstract process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public abstract setHostValue(Ljava/lang/String;Ljava/lang/Object;)V
.end method
