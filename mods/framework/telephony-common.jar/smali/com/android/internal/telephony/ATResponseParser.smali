.class public Lcom/android/internal/telephony/ATResponseParser;
.super Ljava/lang/Object;
.source "ATResponseParser.java"


# instance fields
.field private mLine:Ljava/lang/String;

.field private mNext:I

.field private mTokEnd:I

.field private mTokStart:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    iput-object p1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    return-void
.end method

.method private nextTok()V
    .locals 9

    const/16 v8, 0x2c

    const/16 v7, 0x22

    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->skipPrefix()V

    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-lt v4, v3, :cond_1

    new-instance v4, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v4}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v4

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ATResponseParser;->skipWhiteSpace(C)C

    move-result v0

    if-ne v0, v7, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-lt v4, v3, :cond_2

    new-instance v4, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v4}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v4, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v4}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v4

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    :goto_0
    if-eq v0, v7, :cond_3

    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v4, v3, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_3
    if-eq v0, v7, :cond_4

    new-instance v4, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v4}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v4

    :cond_4
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v4, v3, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_7

    new-instance v4, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v4}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v4

    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    :goto_1
    if-eq v0, v8, :cond_7

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    :cond_6
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ne v4, v3, :cond_8

    :cond_7
    return-void

    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1
.end method

.method private skipPrefix()V
    .locals 5

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    iget-object v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    return-void

    :cond_1
    new-instance v2, Lcom/android/internal/telephony/ATParseEx;

    const-string v3, "missing prefix"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private skipWhiteSpace(C)C
    .locals 4
    .param p1    # C

    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v1}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v1

    :cond_1
    return p1
.end method


# virtual methods
.method public hasMore()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    iget v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v1}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_2

    const/4 v1, 0x0

    :cond_1
    return v1

    :cond_2
    const/16 v2, 0x31

    if-eq v0, v2, :cond_1

    new-instance v1, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v1}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v1
.end method

.method public nextInt()I
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-le v0, v3, :cond_1

    :cond_0
    new-instance v3, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v3}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v3

    :cond_1
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v0, -0x30

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public nextString()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
