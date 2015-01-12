.class public Lcom/android/incalluibind/ServiceFactory;
.super Ljava/lang/Object;
.source "ServiceFactory.java"


# direct methods
.method public static newPhoneNumberService(Landroid/content/Context;)Lcom/android/incallui/service/PhoneNumberService;
    .locals 1
    .param p0    # Landroid/content/Context;

    new-instance v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    invoke-direct {v0, p0}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
