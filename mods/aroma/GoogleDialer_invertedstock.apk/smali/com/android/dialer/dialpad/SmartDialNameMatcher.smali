.class public Lcom/android/dialer/dialpad/SmartDialNameMatcher;
.super Ljava/lang/Object;
.source "SmartDialNameMatcher.java"


# static fields
.field public static final LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;


# instance fields
.field private final mMap:Lcom/android/dialer/dialpad/SmartDialMap;

.field private final mMatchPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mNameMatchMask:Ljava/lang/String;

.field private mPhoneNumberMatchMask:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dialer/dialpad/LatinSmartDialMap;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/LatinSmartDialMap;-><init>()V

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    sget-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    return-void
.end method

.method private constructEmptyMask(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v3, 0x0

    move v2, p3

    move v1, p3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_3

    :cond_2
    new-instance v4, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int/lit8 v5, p3, 0x0

    invoke-direct {v4, v5, v2}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v5, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-interface {v5, v0}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadNumericChar(C)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_4

    if-eqz p3, :cond_4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2
.end method

.method public static normalizeNumber(Ljava/lang/String;ILcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # Lcom/android/dialer/dialpad/SmartDialMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadNumericChar(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Lcom/android/dialer/dialpad/SmartDialMap;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;ILcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    iget v0, p2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    :goto_0
    iget v1, p2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const-string v2, "1"

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMatchPositions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 19
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;)Z"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->constructEmptyMask(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_0

    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_0
    if-nez v11, :cond_1

    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v8, v7, :cond_e

    if-ge v12, v11, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadAlphabeticChar(C)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->getDialpadNumericCharacter(C)C

    move-result v3

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    if-eq v3, v0, :cond_6

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    if-eqz v16, :cond_5

    :cond_3
    :goto_2
    if-ge v8, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    if-eqz v16, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    :cond_5
    const/4 v12, 0x0

    const/4 v14, 0x0

    move v15, v8

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v16, v11, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_8

    new-instance v16, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int v17, v11, v15

    add-int v17, v17, v14

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_8
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    move v5, v8

    :goto_4
    if-ge v5, v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-interface/range {v17 .. v18}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    if-nez v16, :cond_b

    :cond_9
    add-int/lit8 v16, v7, -0x1

    move/from16 v0, v16

    if-ge v5, v0, :cond_a

    add-int/lit8 v16, v5, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v12, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1, v10}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v16

    if-eqz v16, :cond_a

    add-int/lit8 v16, v5, 0x1

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->advanceMatchPositions(Ljava/util/ArrayList;I)V

    const/16 v16, 0x0

    new-instance v17, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v9, v10

    :cond_a
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    if-nez v12, :cond_d

    move v15, v8

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    goto :goto_5

    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public matchesNumber(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v0

    return-object v0
.end method

.method public matchesNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v0

    return-object v0
.end method

.method public matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->constructEmptyMask(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/dialer/dialpad/SmartDialPrefix;->parsePhoneNumber(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    iget v4, v3, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->countryCodeOffset:I

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->countryCodeOffset:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    iget v4, v3, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->nanpCodeOffset:I

    if-eqz v4, :cond_2

    if-eqz p3, :cond_2

    iget v4, v3, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->nanpCodeOffset:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    return-void
.end method
