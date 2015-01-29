.class public final Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DigitalServiceSource"
.end annotation


# static fields
.field private static final DIGITAL_SERVICE_IDENTIFIED_BY_CHANNEL:I = 0x1

.field private static final DIGITAL_SERVICE_IDENTIFIED_BY_DIGITAL_ID:I = 0x0

.field static final EXTRA_DATA_SIZE:I = 0x7


# instance fields
.field private final mBroadcastSystem:I

.field private final mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

.field private final mIdentificationMethod:I


# direct methods
.method private constructor <init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    const/4 v0, 0x2

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentificationMethod:I

    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mBroadcastSystem:I

    iput-object p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    return-void
.end method

.method synthetic constructor <init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$1;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;
    .param p4    # Landroid/hardware/hdmi/HdmiRecordSources$1;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;)V

    return-void
.end method


# virtual methods
.method extraParamToByteArray([BI)I
    .locals 2
    .param p1    # [B
    .param p2    # I

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentificationMethod:I

    shl-int/lit8 v0, v0, 0x7

    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mBroadcastSystem:I

    and-int/lit8 v1, v1, 0x7f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;->toByteArray([BI)I

    const/4 v0, 0x7

    return v0
.end method
