.class public Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;
.super Ljava/lang/Object;
.source "PhoneNumberInfoImpl.java"

# interfaces
.implements Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mImageUrl:Ljava/lang/String;

.field private mIsBusiness:Z

.field private mLabel:Ljava/lang/String;

.field private mLookupKey:Ljava/lang/String;

.field private mNormalizedNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mObjectId:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Z
    .param p9    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mDisplayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mNormalizedNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mNumber:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mType:I

    iput-object p5, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mLabel:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mImageUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mLookupKey:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mIsBusiness:Z

    iput-object p9, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mObjectId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalizedNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mNormalizedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    iget v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mType:I

    return v0
.end method

.method public isBusiness()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mIsBusiness:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mDisplayName"

    iget-object v2, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mImageUrl"

    iget-object v2, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNormalizedNumber"

    iget-object v2, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
