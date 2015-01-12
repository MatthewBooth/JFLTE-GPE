.class public Lcom/android/contacts/common/format/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# direct methods
.method public static charArrayBufferToString(Landroid/database/CharArrayBuffer;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/database/CharArrayBuffer;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v2, 0x0

    iget v3, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static copyToCharArrayBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/database/CharArrayBuffer;

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v3, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    :cond_2
    iput v3, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1
.end method

.method public static indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 7
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/String;

    const/4 v4, -0x1

    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    if-ge v0, v3, :cond_a

    :goto_1
    if-ge v0, v3, :cond_6

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    add-int v5, v0, v2

    if-le v5, v3, :cond_7

    move v0, v4

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_8

    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_9

    :cond_8
    if-eq v1, v2, :cond_1

    :goto_3
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    move v0, v4

    goto :goto_0
.end method

.method public static overlapPoint(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/format/FormatUtils;->overlapPoint([C[C)I

    move-result v0

    goto :goto_0
.end method

.method public static overlapPoint([C[C)I
    .locals 8
    .param p0    # [C
    .param p1    # [C

    const/4 v5, -0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v5

    :cond_1
    :goto_0
    return v2

    :cond_2
    array-length v0, p0

    array-length v1, p1

    :goto_1
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    add-int/lit8 v6, v0, -0x1

    aget-char v6, p0, v6

    add-int/lit8 v7, v1, -0x1

    aget-char v7, p1, v7

    if-ne v6, v7, :cond_3

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v4, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_7

    add-int v6, v2, v4

    if-le v6, v0, :cond_4

    sub-int v4, v0, v2

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_5

    add-int v6, v2, v3

    aget-char v6, p0, v6

    aget-char v7, p1, v3

    if-eq v6, v7, :cond_6

    :cond_5
    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v2, v5

    goto :goto_0
.end method
