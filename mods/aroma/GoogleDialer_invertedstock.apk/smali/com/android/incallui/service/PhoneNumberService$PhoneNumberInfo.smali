.class public interface abstract Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;
.super Ljava/lang/Object;
.source "PhoneNumberService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/PhoneNumberService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneNumberInfo"
.end annotation


# virtual methods
.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getNumber()Ljava/lang/String;
.end method

.method public abstract getPhoneLabel()Ljava/lang/String;
.end method

.method public abstract getPhoneType()I
.end method

.method public abstract isBusiness()Z
.end method
