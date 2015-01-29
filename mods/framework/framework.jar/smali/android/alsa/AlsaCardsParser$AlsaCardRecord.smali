.class public Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/alsa/AlsaCardsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaCardRecord"
.end annotation


# instance fields
.field public mCardDescription:Ljava/lang/String;

.field public mCardName:Ljava/lang/String;

.field public mCardNum:I

.field public mField1:Ljava/lang/String;

.field final synthetic this$0:Landroid/alsa/AlsaCardsParser;


# direct methods
.method public constructor <init>(Landroid/alsa/AlsaCardsParser;)V
    .locals 1

    iput-object p1, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->this$0:Landroid/alsa/AlsaCardsParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    const-string v0, ""

    iput-object v0, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;I)Z
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_1

    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v1

    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v0

    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v1

    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-ne p2, v4, :cond_0

    # getter for: Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaCardsParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public textFormat()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
