.class public Lcom/android/internal/telephony/UUSInfo;
.super Ljava/lang/Object;
.source "UUSInfo.java"


# static fields
.field public static final UUS_DCS_IA5c:I = 0x4

.field public static final UUS_DCS_OSIHLP:I = 0x1

.field public static final UUS_DCS_RMCF:I = 0x3

.field public static final UUS_DCS_USP:I = 0x0

.field public static final UUS_DCS_X244:I = 0x2

.field public static final UUS_TYPE1_IMPLICIT:I = 0x0

.field public static final UUS_TYPE1_NOT_REQUIRED:I = 0x2

.field public static final UUS_TYPE1_REQUIRED:I = 0x1

.field public static final UUS_TYPE2_NOT_REQUIRED:I = 0x4

.field public static final UUS_TYPE2_REQUIRED:I = 0x3

.field public static final UUS_TYPE3_NOT_REQUIRED:I = 0x6

.field public static final UUS_TYPE3_REQUIRED:I = 0x5


# instance fields
.field private mUusData:[B

.field private mUusDcs:I

.field private mUusType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # [B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    iput p2, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    iput-object p3, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-void
.end method


# virtual methods
.method public getDcs()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    return v0
.end method

.method public getUserData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-object v0
.end method

.method public setDcs(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    return-void
.end method

.method public setUserData([B)V
    .locals 0
    .param p1    # [B

    iput-object p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-void
.end method
