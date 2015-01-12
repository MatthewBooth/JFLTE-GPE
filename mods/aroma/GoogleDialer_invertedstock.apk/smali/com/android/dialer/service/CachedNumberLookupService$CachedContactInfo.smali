.class public interface abstract Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
.super Ljava/lang/Object;
.source "CachedNumberLookupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/service/CachedNumberLookupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CachedContactInfo"
.end annotation


# virtual methods
.method public abstract getContactInfo()Lcom/android/dialer/calllog/ContactInfo;
.end method

.method public abstract setDirectorySource(Ljava/lang/String;J)V
.end method

.method public abstract setExtendedSource(Ljava/lang/String;J)V
.end method

.method public abstract setLookupKey(Ljava/lang/String;)V
.end method
