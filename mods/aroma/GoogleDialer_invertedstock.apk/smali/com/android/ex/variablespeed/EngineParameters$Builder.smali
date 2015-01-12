.class public Lcom/android/ex/variablespeed/EngineParameters$Builder;
.super Ljava/lang/Object;
.source "EngineParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/variablespeed/EngineParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioStreamType:I

.field private mDecodeBufferInitialSize:I

.field private mDecodeBufferMaxSize:I

.field private mInitialRate:F

.field private mMaxPlayBufferCount:I

.field private mStartPositionMillis:I

.field private mTargetFrames:I

.field private mWindowDuration:F

.field private mWindowOverlapDuration:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mTargetFrames:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mMaxPlayBufferCount:I

    const v0, 0x3da3d70a

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mWindowDuration:F

    const v0, 0x3c03126f

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mWindowOverlapDuration:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mInitialRate:F

    const/16 v0, 0x1400

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mDecodeBufferInitialSize:I

    const/16 v0, 0x5000

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mDecodeBufferMaxSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mStartPositionMillis:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mAudioStreamType:I

    return-void
.end method


# virtual methods
.method public audioStreamType(I)Lcom/android/ex/variablespeed/EngineParameters$Builder;
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mAudioStreamType:I

    return-object p0
.end method

.method public build()Lcom/android/ex/variablespeed/EngineParameters;
    .locals 11

    new-instance v0, Lcom/android/ex/variablespeed/EngineParameters;

    iget v1, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mTargetFrames:I

    iget v2, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mMaxPlayBufferCount:I

    iget v3, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mWindowDuration:F

    iget v4, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mWindowOverlapDuration:F

    iget v5, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mInitialRate:F

    iget v6, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mDecodeBufferInitialSize:I

    iget v7, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mDecodeBufferMaxSize:I

    iget v8, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mStartPositionMillis:I

    iget v9, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mAudioStreamType:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/ex/variablespeed/EngineParameters;-><init>(IIFFFIIIILcom/android/ex/variablespeed/EngineParameters$1;)V

    return-object v0
.end method

.method public initialRate(F)Lcom/android/ex/variablespeed/EngineParameters$Builder;
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mInitialRate:F

    return-object p0
.end method

.method public startPositionMillis(I)Lcom/android/ex/variablespeed/EngineParameters$Builder;
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mStartPositionMillis:I

    return-object p0
.end method
