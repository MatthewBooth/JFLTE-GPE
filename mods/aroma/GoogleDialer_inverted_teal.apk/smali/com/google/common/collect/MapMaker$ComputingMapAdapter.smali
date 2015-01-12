.class final Lcom/google/common/collect/MapMaker$ComputingMapAdapter;
.super Lcom/google/common/collect/ComputingConcurrentHashMap;
.source "MapMaker.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComputingMapAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ComputingConcurrentHashMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V
    .locals 0
    .param p1    # Lcom/google/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;->getOrCompute(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;->computingFunction:Lcom/google/common/base/Function;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-class v3, Lcom/google/common/collect/ComputationException;

    invoke-static {v0, v3}, Lcom/google/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance v3, Lcom/google/common/collect/ComputationException;

    invoke-direct {v3, v0}, Lcom/google/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    return-object v2
.end method
