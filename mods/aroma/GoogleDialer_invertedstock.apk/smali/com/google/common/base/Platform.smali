.class final Lcom/google/common/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/base/Platform$1;

    invoke-direct {v0}, Lcom/google/common/base/Platform$1;-><init>()V

    sput-object v0, Lcom/google/common/base/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static systemNanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
