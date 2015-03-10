.class public Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
.super Ljava/lang/Object;
.source "ModemStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ModemStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModemCapabilityInfo"
.end annotation


# instance fields
.field private mMaxDataCap:I

.field private mStackId:I

.field private mSupportedRatBitMask:I

.field private mVoiceDataCap:I

.field final synthetic this$0:Lcom/android/internal/telephony/ModemStackController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ModemStackController;IIII)V
    .locals 0
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    iput-object p1, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->this$0:Lcom/android/internal/telephony/ModemStackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->mStackId:I

    iput p3, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->mSupportedRatBitMask:I

    iput p4, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->mVoiceDataCap:I

    iput p5, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->mMaxDataCap:I

    return-void
.end method


# virtual methods
.method public getMaxDataCap()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->mMaxDataCap:I

    return v0
.end method

.method public getStackId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->mStackId:I

    return v0
.end method

.method public getSupportedRatBitMask()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->mSupportedRatBitMask:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[stack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SuppRatBitMask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->mSupportedRatBitMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voiceDataCap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->mVoiceDataCap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxDataCap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->mMaxDataCap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
