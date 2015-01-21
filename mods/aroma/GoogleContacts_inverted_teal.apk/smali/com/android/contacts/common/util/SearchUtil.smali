.class public Lcom/android/contacts/common/util/SearchUtil;
.super Ljava/lang/Object;
.source "SearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/SearchUtil$MatchedLine;
    }
.end annotation


# direct methods
.method public static cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    const-string v3, ""

    :goto_1
    return-object v3

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_2
    const/4 v3, -0x1

    if-le v1, v3, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method static contains(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    move v1, v8

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    new-array v4, v9, [I

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_2

    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    aput v0, v4, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v1, v9

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_5

    const/4 v3, 0x0

    move v2, v1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_3

    if-ge v3, v6, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v7

    aget v5, v4, v3

    if-eq v7, v5, :cond_4

    :cond_3
    if-eq v3, v6, :cond_0

    invoke-static {p0, v1}, Lcom/android/contacts/common/util/SearchUtil;->findNextTokenStart(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    :cond_4
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v2, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v1, v8

    goto :goto_0
.end method

.method public static findMatchingLine(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/util/SearchUtil$MatchedLine;
    .locals 7
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/16 v6, 0xa

    const/4 v5, -0x1

    new-instance v2, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;

    invoke-direct {v2}, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;-><init>()V

    invoke-static {p0, p1}, Lcom/android/contacts/common/util/SearchUtil;->contains(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_2

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-le v3, v5, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    :cond_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    sub-int v4, v1, v4

    iput v4, v2, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->startIndex:I

    :cond_2
    return-object v2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static findNextTokenStart(Ljava/lang/String;I)I
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # I

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_0

    move v2, v1

    :goto_1
    return v2

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_3

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_2
.end method
