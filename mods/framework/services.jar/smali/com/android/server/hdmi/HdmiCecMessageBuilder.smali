.class public Lcom/android/server/hdmi/HdmiCecMessageBuilder;
.super Ljava/lang/Object;
.source "HdmiCecMessageBuilder.java"


# static fields
.field private static final OSD_NAME_MAX_LENGTH:I = 0xd


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0    # I
    .param p1    # I

    const/16 v0, 0xf

    const/16 v1, 0x82

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0    # I
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # [B

    const/16 v0, 0x33

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # [B

    const/16 v0, 0x99

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # [B

    const/16 v0, 0xa1

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method private static buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2
    .param p0    # I
    .param p1    # I
    .param p2    # I

    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method private static buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # [B

    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method static buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0    # I
    .param p1    # I

    const/4 v1, 0x3

    new-array v0, v1, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x87

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v3, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-static {p0, p1, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0x71

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0x8f

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0x8c

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0x46

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0x83

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0x7d

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0    # I
    .param p1    # I

    const/4 v0, 0x0

    const/16 v1, 0x9d

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # [B

    const/16 v0, 0x9

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0xc1

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0xc2

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0    # I
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0    # I
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x3

    new-array v0, v1, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x84

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0    # I
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0xc3

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0xc4

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0    # I
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x80

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # [B

    const/16 v0, 0x34

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # [B

    const/16 v0, 0x97

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # [B

    const/16 v0, 0xa2

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 7
    .param p0    # I
    .param p1    # Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v6, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [B

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    const/16 v2, 0xf

    const/16 v3, 0x32

    invoke-static {p0, v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    goto :goto_0
.end method

.method static buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 5
    .param p0    # I
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xd

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/16 v3, 0x47

    invoke-static {p0, p1, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method static buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0    # I
    .param p1    # I

    const/16 v0, 0xf

    const/16 v1, 0x86

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method public static buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0x36

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    const/16 v1, 0x70

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    goto :goto_0
.end method

.method static buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0    # I
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # [B

    const/16 v0, 0x44

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I

    const/16 v0, 0x45

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # [B

    const/16 v0, 0x89

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # [B

    const/4 v3, 0x0

    array-length v1, p3

    add-int/lit8 v1, v1, 0x3

    new-array v0, v1, [B

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v1, 0xa0

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4
    .param p0    # I
    .param p1    # I
    .param p2    # [B

    const/4 v2, 0x0

    aget-byte v0, p2, v2

    const/4 v2, 0x1

    array-length v3, p2

    invoke-static {p2, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v2
.end method

.method private static physicalAddressToParam(I)[B
    .locals 3
    .param p0    # I

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
