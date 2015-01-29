.class public Landroid/media/AudioGainConfig;
.super Ljava/lang/Object;
.source "AudioGainConfig.java"


# instance fields
.field private final mChannelMask:I

.field mGain:Landroid/media/AudioGain;

.field private final mIndex:I

.field private final mMode:I

.field private final mRampDurationMs:I

.field private final mValues:[I


# direct methods
.method constructor <init>(ILandroid/media/AudioGain;II[II)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/media/AudioGain;
    .param p3    # I
    .param p4    # I
    .param p5    # [I
    .param p6    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioGainConfig;->mIndex:I

    iput-object p2, p0, Landroid/media/AudioGainConfig;->mGain:Landroid/media/AudioGain;

    iput p3, p0, Landroid/media/AudioGainConfig;->mMode:I

    iput p4, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    iput-object p5, p0, Landroid/media/AudioGainConfig;->mValues:[I

    iput p6, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    return-void
.end method


# virtual methods
.method public channelMask()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    return v0
.end method

.method index()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mIndex:I

    return v0
.end method

.method public mode()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mMode:I

    return v0
.end method

.method public rampDurationMs()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    return v0
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioGainConfig;->mValues:[I

    return-object v0
.end method
