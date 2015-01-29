.class public Landroid/alsa/AlsaDevicesParser;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlsaDevicesParser"

.field private static final kEndIndex_CardNum:I = 0x8

.field private static final kEndIndex_DeviceNum:I = 0xb

.field private static final kIndex_CardDeviceField:I = 0x5

.field private static final kStartIndex_CardNum:I = 0x6

.field private static final kStartIndex_DeviceNum:I = 0x9

.field private static final kStartIndex_Type:I = 0xe

.field private static mTokenizer:Landroid/alsa/LineTokenizer;


# instance fields
.field private deviceRecords_:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHasCaptureDevices:Z

.field private mHasMIDIDevices:Z

.field private mHasPlaybackDevices:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/alsa/LineTokenizer;

    const-string v1, " :[]-"

    invoke-direct {v0, v1}, Landroid/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/alsa/AlsaDevicesParser;->mTokenizer:Landroid/alsa/LineTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z

    iput-boolean v0, p0, Landroid/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z

    iput-boolean v0, p0, Landroid/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/alsa/AlsaDevicesParser;->deviceRecords_:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$000()Landroid/alsa/LineTokenizer;
    .locals 1

    sget-object v0, Landroid/alsa/AlsaDevicesParser;->mTokenizer:Landroid/alsa/LineTokenizer;

    return-object v0
.end method

.method static synthetic access$102(Landroid/alsa/AlsaDevicesParser;Z)Z
    .locals 0
    .param p0    # Landroid/alsa/AlsaDevicesParser;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z

    return p1
.end method

.method static synthetic access$202(Landroid/alsa/AlsaDevicesParser;Z)Z
    .locals 0
    .param p0    # Landroid/alsa/AlsaDevicesParser;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z

    return p1
.end method

.method static synthetic access$302(Landroid/alsa/AlsaDevicesParser;Z)Z
    .locals 0
    .param p0    # Landroid/alsa/AlsaDevicesParser;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z

    return p1
.end method

.method private isLineDeviceRecord(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Log()V
    .locals 5

    invoke-virtual {p0}, Landroid/alsa/AlsaDevicesParser;->getNumDeviceRecords()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const-string v2, "AlsaDevicesParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/alsa/AlsaDevicesParser;->getDeviceRecordAt(I)Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    move-result-object v4

    invoke-virtual {v4}, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->textFormat()Ljava/lang/String;

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

.method public getDeviceRecordAt(I)Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/alsa/AlsaDevicesParser;->deviceRecords_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    return-object v0
.end method

.method public getNumDeviceRecords()I
    .locals 1

    iget-object v0, p0, Landroid/alsa/AlsaDevicesParser;->deviceRecords_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public hasCaptureDevices()Z
    .locals 1

    iget-boolean v0, p0, Landroid/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z

    return v0
.end method

.method public hasCaptureDevices(I)Z
    .locals 3
    .param p1    # I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/alsa/AlsaDevicesParser;->deviceRecords_:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/alsa/AlsaDevicesParser;->deviceRecords_:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    iget v2, v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    if-nez v2, :cond_0

    iget v2, v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hasMIDIDevices()Z
    .locals 1

    iget-boolean v0, p0, Landroid/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z

    return v0
.end method

.method public hasMIDIDevices(I)Z
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/alsa/AlsaDevicesParser;->deviceRecords_:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/alsa/AlsaDevicesParser;->deviceRecords_:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    iget v2, v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hasPlaybackDevices()Z
    .locals 1

    iget-boolean v0, p0, Landroid/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z

    return v0
.end method

.method public hasPlaybackDevices(I)Z
    .locals 4
    .param p1    # I

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/alsa/AlsaDevicesParser;->deviceRecords_:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/alsa/AlsaDevicesParser;->deviceRecords_:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    iget v3, v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v3, p1, :cond_0

    iget v3, v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    if-nez v3, :cond_0

    iget v3, v0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    if-ne v3, v2, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public scan()V
    .locals 8

    iget-object v7, p0, Landroid/alsa/AlsaDevicesParser;->deviceRecords_:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    const-string v3, "/proc/asound/devices"

    new-instance v2, Ljava/io/File;

    const-string v7, "/proc/asound/devices"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v5, ""

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v5}, Landroid/alsa/AlsaDevicesParser;->isLineDeviceRecord(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v1, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    invoke-direct {v1, p0}, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;-><init>(Landroid/alsa/AlsaDevicesParser;)V

    invoke-virtual {v1, v5}, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->parse(Ljava/lang/String;)Z

    iget-object v7, p0, Landroid/alsa/AlsaDevicesParser;->deviceRecords_:Ljava/util/Vector;

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

    :cond_1
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
