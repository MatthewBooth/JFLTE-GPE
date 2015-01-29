.class public Landroid/telecom/VideoProfile$VideoState;
.super Ljava/lang/Object;
.source "VideoProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoState"
.end annotation


# static fields
.field public static final AUDIO_ONLY:I = 0x0

.field public static final BIDIRECTIONAL:I = 0x3

.field public static final PAUSED:I = 0x4

.field public static final RX_ENABLED:I = 0x2

.field public static final TX_ENABLED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasState(II)Z
    .locals 1
    .param p0    # I
    .param p1    # I

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAudioOnly(I)Z
    .locals 2
    .param p0    # I

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBidirectional(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isPaused(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isReceptionEnabled(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isTransmissionEnabled(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile$VideoState;->hasState(II)Z

    move-result v0

    return v0
.end method
