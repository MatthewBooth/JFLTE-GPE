.class public Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;
.super Ljava/lang/Object;
.source "AreaCodeMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

.field private final phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method private binarySearch(IIJ)I
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # J

    const/4 v0, 0x0

    :goto_0
    if-gt p1, p2, :cond_2

    add-int v3, p1, p2

    ushr-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v3, v0}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getPrefix(I)I

    move-result v2

    int-to-long v4, v2

    cmp-long v3, v4, p3

    if-nez v3, :cond_0

    move v1, v0

    :goto_1
    return v1

    :cond_0
    int-to-long v4, v2

    cmp-long v3, v4, p3

    if-lez v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method lookup(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 13
    .param p1    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    const/4 v12, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v9}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getNumOfEntries()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v10, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-int/lit8 v0, v3, -0x1

    iget-object v9, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v9}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getPossibleLengths()Ljava/util/TreeSet;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v9, v10, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_2
    invoke-direct {p0, v12, v0, v4, v5}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->binarySearch(IIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v9, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v9, v0}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getPrefix(I)I

    move-result v1

    int-to-long v10, v1

    cmp-long v9, v4, v10

    if-nez v9, :cond_3

    iget-object v8, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v8, v0}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getDescription(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    invoke-interface {v2, v7}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    goto :goto_1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    :goto_0
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->readExternal(Ljava/io/ObjectInput;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    instance-of v0, v0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void
.end method
