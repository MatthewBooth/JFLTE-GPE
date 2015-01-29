.class public Landroid/media/AudioGain;
.super Ljava/lang/Object;
.source "AudioGain.java"


# static fields
.field public static final MODE_CHANNELS:I = 0x2

.field public static final MODE_JOINT:I = 0x1

.field public static final MODE_RAMP:I = 0x4


# instance fields
.field private final mChannelMask:I

.field private final mDefaultValue:I

.field private final mIndex:I

.field private final mMaxValue:I

.field private final mMinValue:I

.field private final mMode:I

.field private final mRampDurationMaxMs:I

.field private final mRampDurationMinMs:I

.field private final mStepValue:I


# direct methods
.method constructor <init>(IIIIIIIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioGain;->mIndex:I

    iput p2, p0, Landroid/media/AudioGain;->mMode:I

    iput p3, p0, Landroid/media/AudioGain;->mChannelMask:I

    iput p4, p0, Landroid/media/AudioGain;->mMinValue:I

    iput p5, p0, Landroid/media/AudioGain;->mMaxValue:I

    iput p6, p0, Landroid/media/AudioGain;->mDefaultValue:I

    iput p7, p0, Landroid/media/AudioGain;->mStepValue:I

    iput p8, p0, Landroid/media/AudioGain;->mRampDurationMinMs:I

    iput p9, p0, Landroid/media/AudioGain;->mRampDurationMaxMs:I

    return-void
.end method


# virtual methods
.method public buildConfig(II[II)Landroid/media/AudioGainConfig;
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # [I
    .param p4    # I

    new-instance v0, Landroid/media/AudioGainConfig;

    iget v1, p0, Landroid/media/AudioGain;->mIndex:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioGainConfig;-><init>(ILandroid/media/AudioGain;II[II)V

    return-object v0
.end method

.method public channelMask()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mChannelMask:I

    return v0
.end method

.method public defaultValue()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mDefaultValue:I

    return v0
.end method

.method public maxValue()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mMaxValue:I

    return v0
.end method

.method public minValue()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mMinValue:I

    return v0
.end method

.method public mode()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mMode:I

    return v0
.end method

.method public rampDurationMaxMs()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mRampDurationMaxMs:I

    return v0
.end method

.method public rampDurationMinMs()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mRampDurationMinMs:I

    return v0
.end method

.method public stepValue()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGain;->mStepValue:I

    return v0
.end method
