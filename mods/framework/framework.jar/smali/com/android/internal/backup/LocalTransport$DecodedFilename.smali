.class Lcom/android/internal/backup/LocalTransport$DecodedFilename;
.super Ljava/lang/Object;
.source "LocalTransport.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/LocalTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DecodedFilename"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/backup/LocalTransport$DecodedFilename;",
        ">;"
    }
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->file:Ljava/io/File;

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/backup/LocalTransport$DecodedFilename;)I
    .locals 2
    .param p1    # Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    invoke-virtual {p0, p1}, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->compareTo(Lcom/android/internal/backup/LocalTransport$DecodedFilename;)I

    move-result v0

    return v0
.end method
