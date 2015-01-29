.class public Landroid/media/AudioMixPort;
.super Landroid/media/AudioPort;
.source "AudioMixPort.java"


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;I[I[I[I[Landroid/media/AudioGain;)V
    .locals 0
    .param p1    # Landroid/media/AudioHandle;
    .param p2    # I
    .param p3    # [I
    .param p4    # [I
    .param p5    # [I
    .param p6    # [Landroid/media/AudioGain;

    invoke-direct/range {p0 .. p6}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;I[I[I[I[Landroid/media/AudioGain;)V

    return-void
.end method


# virtual methods
.method public buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioMixPortConfig;
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/media/AudioGainConfig;

    new-instance v0, Landroid/media/AudioMixPortConfig;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioMixPortConfig;-><init>(Landroid/media/AudioMixPort;IIILandroid/media/AudioGainConfig;)V

    return-object v0
.end method

.method public bridge synthetic buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/media/AudioGainConfig;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioMixPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioMixPortConfig;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/media/AudioMixPort;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/media/AudioPort;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
