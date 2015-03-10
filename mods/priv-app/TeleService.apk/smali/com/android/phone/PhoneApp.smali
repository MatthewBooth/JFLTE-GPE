.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"


# instance fields
.field mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

.field mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneGlobals;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->onCreate()V

    new-instance v0, Lcom/android/services/telephony/TelephonyGlobals;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyGlobals;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyGlobals;->onCreate()V

    :cond_0
    return-void
.end method
