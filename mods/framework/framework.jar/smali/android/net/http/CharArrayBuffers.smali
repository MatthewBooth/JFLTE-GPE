.class Landroid/net/http/CharArrayBuffers;
.super Ljava/lang/Object;
.source "CharArrayBuffers.java"


# static fields
.field static final uppercaseAddon:C = ' '


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z
    .locals 10
    .param p0    # Lorg/apache/http/util/CharArrayBuffer;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v2

    :goto_0
    if-ge p1, v4, :cond_0

    aget-char v9, v2, p1

    invoke-static {v9}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int v9, p1, v6

    if-lt v4, v9, :cond_2

    move v5, v7

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v5, :cond_4

    if-ge v3, v6, :cond_4

    add-int v9, p1, v3

    aget-char v0, v2, v9

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Landroid/net/http/CharArrayBuffers;->toLower(C)C

    move-result v0

    invoke-static {v1}, Landroid/net/http/CharArrayBuffers;->toLower(C)C

    move-result v1

    if-ne v0, v1, :cond_3

    move v5, v7

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v5, v8

    goto :goto_1

    :cond_3
    move v5, v8

    goto :goto_3

    :cond_4
    return v5
.end method

.method static setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I
    .locals 6
    .param p0    # Lorg/apache/http/util/CharArrayBuffer;
    .param p1    # I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-char v2, v1, v4

    if-ne v2, p1, :cond_0

    :goto_1
    return v4

    :cond_0
    const/16 v5, 0x41

    if-lt v2, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v2, v5, :cond_1

    add-int/lit8 v5, v2, 0x20

    int-to-char v2, v5

    aput-char v2, v1, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private static toLower(C)C
    .locals 1
    .param p0    # C

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    :cond_0
    return p0
.end method
