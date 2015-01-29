.class public Landroid/net/wifi/BatchedScanSettings;
.super Ljava/lang/Object;
.source "BatchedScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/BatchedScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AP_FOR_DISTANCE:I = 0x0

.field public static final DEFAULT_AP_PER_SCAN:I = 0x10

.field public static final DEFAULT_INTERVAL_SEC:I = 0x1e

.field public static final DEFAULT_SCANS_PER_BATCH:I = 0x14

.field public static final MAX_AP_FOR_DISTANCE:I = 0x10

.field public static final MAX_AP_PER_SCAN:I = 0x10

.field public static final MAX_INTERVAL_SEC:I = 0x1f4

.field public static final MAX_SCANS_PER_BATCH:I = 0x14

.field public static final MAX_WIFI_CHANNEL:I = 0xc4

.field public static final MIN_AP_FOR_DISTANCE:I = 0x0

.field public static final MIN_AP_PER_SCAN:I = 0x2

.field public static final MIN_INTERVAL_SEC:I = 0xa

.field public static final MIN_SCANS_PER_BATCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BatchedScanSettings"

.field public static final UNSPECIFIED:I = 0x7fffffff


# instance fields
.field public channelSet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxApForDistance:I

.field public maxApPerScan:I

.field public maxScansPerBatch:I

.field public scanIntervalSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/BatchedScanSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/BatchedScanSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/BatchedScanSettings;->clear()V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 2
    .param p1    # Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iget-object v0, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    :cond_0
    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iget v0, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    return-void
.end method

.method private channelSetIsValid()Z
    .locals 5

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_3

    const/16 v4, 0xc4

    if-le v1, v4, :cond_2

    :cond_3
    :goto_1
    const-string v4, "A"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "B"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    const v1, 0x7fffffff

    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iput v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    return-void
.end method

.method public constrain()V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x14

    const v4, 0x7fffffff

    const/4 v3, 0x2

    const/16 v2, 0x10

    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ne v0, v4, :cond_4

    const/16 v0, 0x1e

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ne v0, v4, :cond_6

    iput v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    :cond_1
    :goto_1
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v0, v4, :cond_8

    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    :cond_2
    :goto_2
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ne v0, v4, :cond_a

    iput v6, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    const/16 v0, 0xa

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    goto :goto_0

    :cond_6
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ge v0, v3, :cond_7

    iput v3, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    goto :goto_1

    :cond_7
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-le v0, v5, :cond_1

    iput v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    goto :goto_1

    :cond_8
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ge v0, v3, :cond_9

    iput v3, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    goto :goto_2

    :cond_9
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-le v0, v2, :cond_2

    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    goto :goto_2

    :cond_a
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-gez v0, :cond_b

    iput v6, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    goto :goto_3

    :cond_b
    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-le v0, v2, :cond_3

    iput v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    goto :goto_3
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/net/wifi/BatchedScanSettings;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iget v3, v0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    iget-object v2, v0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    return v0
.end method

.method public isInvalid()Z
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x2

    const v3, 0x7fffffff

    const/4 v0, 0x1

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-lt v1, v4, :cond_0

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-lt v1, v4, :cond_0

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-gt v1, v5, :cond_0

    :cond_2
    invoke-direct {p0}, Landroid/net/wifi/BatchedScanSettings;->channelSetIsValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_0

    :cond_3
    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-eq v1, v3, :cond_4

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-gt v1, v5, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const v6, 0x7fffffff

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<none>"

    const-string v4, "BatchScanSettings [maxScansPerBatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ne v4, v6, :cond_0

    move-object v4, v2

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", maxApPerScan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-ne v4, v6, :cond_1

    move-object v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", scanIntervalSec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    if-ne v4, v6, :cond_2

    move-object v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", maxApForDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-ne v5, v6, :cond_3

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", channelSet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v4, :cond_4

    const-string v4, "ALL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_2
    iget v4, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_3
    iget v5, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_4
    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_5
    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    return-void
.end method
