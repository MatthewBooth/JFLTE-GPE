.class final Lcom/android/ex/variablespeed/EngineParameters;
.super Ljava/lang/Object;
.source "EngineParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/variablespeed/EngineParameters$1;,
        Lcom/android/ex/variablespeed/EngineParameters$Builder;
    }
.end annotation


# instance fields
.field private final mAudioStreamType:I

.field private final mDecodeBufferInitialSize:I

.field private final mDecodeBufferMaxSize:I

.field private final mInitialRate:F

.field private final mMaxPlayBufferCount:I

.field private final mStartPositionMillis:I

.field private final mTargetFrames:I

.field private final mWindowDuration:F

.field private final mWindowOverlapDuration:F


# direct methods
.method private constructor <init>(IIFFFIIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/ex/variablespeed/EngineParameters;->mTargetFrames:I

    iput p2, p0, Lcom/android/ex/variablespeed/EngineParameters;->mMaxPlayBufferCount:I

    iput p3, p0, Lcom/android/ex/variablespeed/EngineParameters;->mWindowDuration:F

    iput p4, p0, Lcom/android/ex/variablespeed/EngineParameters;->mWindowOverlapDuration:F

    iput p5, p0, Lcom/android/ex/variablespeed/EngineParameters;->mInitialRate:F

    iput p6, p0, Lcom/android/ex/variablespeed/EngineParameters;->mDecodeBufferInitialSize:I

    iput p7, p0, Lcom/android/ex/variablespeed/EngineParameters;->mDecodeBufferMaxSize:I

    iput p8, p0, Lcom/android/ex/variablespeed/EngineParameters;->mStartPositionMillis:I

    iput p9, p0, Lcom/android/ex/variablespeed/EngineParameters;->mAudioStreamType:I

    return-void
.end method

.method synthetic constructor <init>(IIFFFIIIILcom/android/ex/variablespeed/EngineParameters$1;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I
    .param p10    # Lcom/android/ex/variablespeed/EngineParameters$1;

    invoke-direct/range {p0 .. p9}, Lcom/android/ex/variablespeed/EngineParameters;-><init>(IIFFFIIII)V

    return-void
.end method


# virtual methods
.method public getAudioStreamType()I
    .locals 1

    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mAudioStreamType:I

    return v0
.end method

.method public getDecodeBufferInitialSize()I
    .locals 1

    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mDecodeBufferInitialSize:I

    return v0
.end method

.method public getDecodeBufferMaxSize()I
    .locals 1

    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mDecodeBufferMaxSize:I

    return v0
.end method

.method public getInitialRate()F
    .locals 1

    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mInitialRate:F

    return v0
.end method

.method public getMaxPlayBufferCount()I
    .locals 1

    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mMaxPlayBufferCount:I

    return v0
.end method

.method public getStartPositionMillis()I
    .locals 1

    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mStartPositionMillis:I

    return v0
.end method

.method public getTargetFrames()I
    .locals 1

    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mTargetFrames:I

    return v0
.end method

.method public getWindowDuration()F
    .locals 1

    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mWindowDuration:F

    return v0
.end method

.method public getWindowOverlapDuration()F
    .locals 1

    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mWindowOverlapDuration:F

    return v0
.end method
