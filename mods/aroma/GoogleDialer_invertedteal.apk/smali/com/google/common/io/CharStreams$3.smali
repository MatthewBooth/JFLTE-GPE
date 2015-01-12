.class final Lcom/google/common/io/CharStreams$3;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/io/OutputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/CharStreams;->newWriterSupplier(Lcom/google/common/io/OutputSupplier;Ljava/nio/charset/Charset;)Lcom/google/common/io/OutputSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/OutputSupplier",
        "<",
        "Ljava/io/OutputStreamWriter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$charset:Ljava/nio/charset/Charset;

.field final synthetic val$out:Lcom/google/common/io/OutputSupplier;


# direct methods
.method constructor <init>(Lcom/google/common/io/OutputSupplier;Ljava/nio/charset/Charset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/CharStreams$3;->val$out:Lcom/google/common/io/OutputSupplier;

    iput-object p2, p0, Lcom/google/common/io/CharStreams$3;->val$charset:Ljava/nio/charset/Charset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutput()Ljava/io/OutputStreamWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v0, p0, Lcom/google/common/io/CharStreams$3;->val$out:Lcom/google/common/io/OutputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/common/io/CharStreams$3;->val$charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public bridge synthetic getOutput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$3;->getOutput()Ljava/io/OutputStreamWriter;

    move-result-object v0

    return-object v0
.end method
