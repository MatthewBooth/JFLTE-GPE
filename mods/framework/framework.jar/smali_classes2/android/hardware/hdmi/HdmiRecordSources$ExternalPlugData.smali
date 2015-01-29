.class public final Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalPlugData"
.end annotation


# static fields
.field static final EXTRA_DATA_SIZE:I = 0x1


# instance fields
.field private final mPlugNumber:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1    # I

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;->mPlugNumber:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/hardware/hdmi/HdmiRecordSources$1;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/hardware/hdmi/HdmiRecordSources$1;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;-><init>(I)V

    return-void
.end method


# virtual methods
.method extraParamToByteArray([BI)I
    .locals 1
    .param p1    # [B
    .param p2    # I

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPlugData;->mPlugNumber:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    const/4 v0, 0x1

    return v0
.end method
