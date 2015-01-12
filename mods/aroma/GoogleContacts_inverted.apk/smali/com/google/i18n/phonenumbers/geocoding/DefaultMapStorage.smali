.class Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;
.super Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
.source "DefaultMapStorage.java"


# instance fields
.field private descriptions:[Ljava/lang/String;

.field private phoneNumberPrefixes:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrefix(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v0, v0, p1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    array-length v2, v2

    iget v3, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    if-ge v2, v3, :cond_1

    :cond_0
    iget v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    :cond_1
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    if-ge v2, v3, :cond_3

    :cond_2
    iget v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .param p1    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v4, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v4, v4, v0

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_1

    :cond_1
    return-void
.end method
