.class final Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;
.super Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
.source "FlyweightMapStorage.java"


# instance fields
.field private descIndexSizeInBytes:I

.field private descriptionIndexes:Ljava/nio/ByteBuffer;

.field private descriptionPool:[Ljava/lang/String;

.field private phoneNumberPrefixes:Ljava/nio/ByteBuffer;

.field private prefixSizeInBytes:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;-><init>()V

    return-void
.end method

.method private readEntries(Ljava/io/ObjectInput;)V
    .locals 3
    .param p1    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    if-ge v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    iget v2, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    if-ge v1, v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    iget v2, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V
    .locals 2
    .param p0    # Ljava/io/ObjectInput;
    .param p1    # I
    .param p2    # Ljava/nio/ByteBuffer;
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int v0, p3, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-interface {p0}, Ljava/io/ObjectInput;->readShort()S

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static readWordFromBuffer(Ljava/nio/ByteBuffer;II)I
    .locals 2
    .param p0    # Ljava/nio/ByteBuffer;
    .param p1    # I
    .param p2    # I

    mul-int v0, p2, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method private static writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V
    .locals 2
    .param p0    # Ljava/io/ObjectOutput;
    .param p1    # I
    .param p2    # Ljava/nio/ByteBuffer;
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int v0, p3, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/ObjectOutput;->writeShort(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-static {v1, v2, p1}, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getPrefix(I)I
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v0, v1, p1}, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .param p1    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v4, v4

    if-ge v4, v1, :cond_2

    :cond_1
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    aput-object v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->readEntries(Ljava/io/ObjectInput;)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 9
    .param p1    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v7, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v7, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v7, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v7, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v7, v7

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget v7, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v2, 0x0

    :goto_2
    iget v7, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    if-ge v2, v7, :cond_2

    iget v7, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v8, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v7, v8, v2}, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    iget v7, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v8, p0, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v7, v8, v2}, Lcom/google/i18n/phonenumbers/geocoding/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
