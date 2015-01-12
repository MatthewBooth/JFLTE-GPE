.class public final Lcom/google/common/base/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation


# instance fields
.field private final builder:Ljava/lang/StringBuilder;

.field private needsSeparator:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->needsSeparator:Z

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/Objects$1;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/common/base/Objects$1;

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->maybeAppendSeparator()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private maybeAppendSeparator()Ljava/lang/StringBuilder;
    .locals 2

    iget-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->needsSeparator:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->needsSeparator:Z

    iget-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # J

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->maybeAppendSeparator()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    throw v0
.end method
