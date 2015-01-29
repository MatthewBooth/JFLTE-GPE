.class public Landroid/alsa/AlsaCardsParser;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlsaCardsParser"

.field private static tokenizer_:Landroid/alsa/LineTokenizer;


# instance fields
.field private cardRecords_:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/alsa/LineTokenizer;

    const-string v1, " :[]"

    invoke-direct {v0, v1}, Landroid/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$000()Landroid/alsa/LineTokenizer;
    .locals 1

    sget-object v0, Landroid/alsa/AlsaCardsParser;->tokenizer_:Landroid/alsa/LineTokenizer;

    return-object v0
.end method


# virtual methods
.method public Log()V
    .locals 5

    invoke-virtual {p0}, Landroid/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const-string v2, "AlsaCardsParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/alsa/AlsaCardsParser;->getCardRecordAt(I)Landroid/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->textFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCardRecordAt(I)Landroid/alsa/AlsaCardsParser$AlsaCardRecord;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;

    return-object v0
.end method

.method public getNumCardRecords()I
    .locals 1

    iget-object v0, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public scan()V
    .locals 8

    iget-object v7, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    const-string v3, "/proc/asound/cards"

    new-instance v2, Ljava/io/File;

    const-string v7, "/proc/asound/cards"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v5, ""

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v1, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;

    invoke-direct {v1, p0}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;-><init>(Landroid/alsa/AlsaCardsParser;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    iget-object v7, p0, Landroid/alsa/AlsaCardsParser;->cardRecords_:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
