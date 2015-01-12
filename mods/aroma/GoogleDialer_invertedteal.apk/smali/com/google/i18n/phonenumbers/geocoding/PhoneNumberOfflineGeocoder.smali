.class public Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
.super Ljava/lang/Object;
.source "PhoneNumberOfflineGeocoder.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;


# instance fields
.field private availablePhonePrefixMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mappingFileProvider:Lcom/google/i18n/phonenumbers/geocoding/MappingFileProvider;

.field private final phonePrefixDataDirectory:Ljava/lang/String;

.field private final phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    const-class v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    new-instance v0, Lcom/google/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/geocoding/MappingFileProvider;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcom/google/i18n/phonenumbers/geocoding/MappingFileProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->loadMappingFileProvider()V

    return-void
.end method

.method private canBeGeocoded(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .locals 1
    .param p1    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0    # Ljava/io/InputStream;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAreaDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    move v3, v0

    :goto_0
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->lookup(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mayFallBackToEnglish(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "en"

    const-string v6, ""

    const-string v7, ""

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v5, ""

    :goto_2
    return-object v5

    :cond_1
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v6

    const-wide/32 v8, 0x989680

    div-long/2addr v6, v8

    long-to-int v5, v6

    add-int/lit16 v3, v5, 0x3e8

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->lookup(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    move-object v5, v2

    goto :goto_2

    :cond_5
    const-string v5, ""

    goto :goto_2
.end method

.method private getCountryNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2    # Ljava/util/Locale;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 3

    const-class v1, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    const-string v2, "/com/google/i18n/phonenumbers/geocoding/data/"

    invoke-direct {v0, v2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcom/google/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/i18n/phonenumbers/geocoding/MappingFileProvider;->getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->loadAreaCodeMapFromFile(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;

    goto :goto_0
.end method

.method private getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/util/Locale;

    if-eqz p1, :cond_0

    const-string v0, "ZZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadAreaCodeMapFromFile(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;

    const-class v5, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;

    invoke-direct {v3}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/i18n/phonenumbers/geocoding/AreaCodeMap;->readExternal(Ljava/io/ObjectInput;)V

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v5, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    throw v5

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private loadMappingFileProvider()V
    .locals 7

    const-class v4, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcom/google/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-virtual {v4, v2}, Lcom/google/i18n/phonenumbers/geocoding/MappingFileProvider;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v4, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    throw v4

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private mayFallBackToEnglish(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ja"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ko"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2    # Ljava/util/Locale;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->canBeGeocoded(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2    # Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getAreaDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
