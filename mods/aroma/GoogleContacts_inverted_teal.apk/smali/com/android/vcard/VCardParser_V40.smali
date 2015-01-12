.class public Lcom/android/vcard/VCardParser_V40;
.super Lcom/android/vcard/VCardParser;
.source "VCardParser_V40.java"


# static fields
.field static final sAcceptableEncoding:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sKnownPropertyNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x26

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BEGIN"

    aput-object v2, v1, v4

    const-string v2, "END"

    aput-object v2, v1, v5

    const-string v2, "VERSION"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "SOURCE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "KIND"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "FN"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "N"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "NICKNAME"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "PHOTO"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "ANNIVERSARY"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "GENDER"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "ADR"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "IMPP"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "LANG"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "TITLE"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "LOGO"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "ORG"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "MEMBER"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "RELATED"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "CATEGORIES"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "PRODID"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "SOUND"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "CLIENTPIDMAP"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "FBURL"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "CALENDRURI"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "CALURI"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "XML"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardParser_V40;->sKnownPropertyNameSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "8BIT"

    aput-object v2, v1, v4

    const-string v2, "B"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardParser_V40;->sAcceptableEncoding:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addInterpreter(Lcom/android/vcard/VCardInterpreter;)V
    .locals 1
    .param p1    # Lcom/android/vcard/VCardInterpreter;

    iget-object v0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    invoke-virtual {v0, p1}, Lcom/android/vcard/VCardParserImpl_V40;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V40;->cancel()V

    return-void
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .param p1    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    invoke-virtual {v0, p1}, Lcom/android/vcard/VCardParserImpl_V40;->parse(Ljava/io/InputStream;)V

    return-void
.end method
