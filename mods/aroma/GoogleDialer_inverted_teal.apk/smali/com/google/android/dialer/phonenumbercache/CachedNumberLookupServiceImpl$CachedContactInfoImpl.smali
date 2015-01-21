.class public Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
.super Ljava/lang/Object;
.source "CachedNumberLookupServiceImpl.java"

# interfaces
.implements Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedContactInfoImpl"
.end annotation


# instance fields
.field public lookupKey:Ljava/lang/String;

.field private final mInfo:Lcom/android/dialer/calllog/ContactInfo;

.field public sourceId:J

.field public sourceName:Ljava/lang/String;

.field public sourceType:I


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 0
    .param p1    # Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->mInfo:Lcom/android/dialer/calllog/ContactInfo;

    return-void

    :cond_0
    sget-object p1, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    goto :goto_0
.end method

.method public static canReportAsInvalid(ILjava/lang/String;)Z
    .locals 1
    .param p0    # I
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->isPeopleApiSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBusiness(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPeopleApiSource(I)Z
    .locals 1
    .param p0    # I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContactInfo()Lcom/android/dialer/calllog/ContactInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->mInfo:Lcom/android/dialer/calllog/ContactInfo;

    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    iget v0, p0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->sourceType:I

    return v0
.end method

.method public setDirectorySource(Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # J

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->setSource(ILjava/lang/String;J)V

    return-void
.end method

.method public setExtendedSource(Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # J

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->setSource(ILjava/lang/String;J)V

    return-void
.end method

.method public setLookupKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->lookupKey:Ljava/lang/String;

    return-void
.end method

.method public setPeopleAPISource(Z)V
    .locals 4
    .param p1    # Z

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    const-string v1, "Google Caller ID"

    const-wide/32 v2, 0x7fffffff

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->setSource(ILjava/lang/String;J)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected setSource(ILjava/lang/String;J)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # J

    iput p1, p0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->sourceType:I

    iput-object p2, p0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->sourceName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->sourceId:J

    iget-object v0, p0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->mInfo:Lcom/android/dialer/calllog/ContactInfo;

    iput p1, v0, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    return-void
.end method
