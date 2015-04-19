.class public interface abstract Lcom/android/dialer/service/CachedNumberLookupService;
.super Ljava/lang/Object;
.source "CachedNumberLookupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    }
.end annotation


# virtual methods
.method public abstract addContact(Landroid/content/Context;Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;)V
.end method

.method public abstract buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
.end method

.method public abstract canReportAsInvalid(ILjava/lang/String;)Z
.end method

.method public abstract clearAllCacheEntries(Landroid/content/Context;)V
.end method

.method public abstract isBusiness(I)Z
.end method

.method public abstract lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
.end method
