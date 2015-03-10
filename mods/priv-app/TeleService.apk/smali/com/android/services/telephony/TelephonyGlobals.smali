.class public Lcom/android/services/telephony/TelephonyGlobals;
.super Ljava/lang/Object;
.source "TelephonyGlobals.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mTtyManager:Lcom/android/services/telephony/TtyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/TelephonyGlobals;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/services/telephony/TtyManager;

    sget-object v2, Lcom/android/services/telephony/TelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/services/telephony/TtyManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/android/services/telephony/TelephonyGlobals;->mTtyManager:Lcom/android/services/telephony/TtyManager;

    :cond_0
    sget-object v1, Lcom/android/services/telephony/TelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->setupOnBoot()V

    return-void
.end method
