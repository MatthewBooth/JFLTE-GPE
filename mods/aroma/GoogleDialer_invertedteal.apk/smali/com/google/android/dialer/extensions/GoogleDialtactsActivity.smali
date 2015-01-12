.class public Lcom/google/android/dialer/extensions/GoogleDialtactsActivity;
.super Lcom/android/dialer/DialtactsActivity;
.source "GoogleDialtactsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleMenuSettings()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/dialer/extensions/GoogleDialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dialer_enable_nearby_places_directory"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {p0}, Lcom/google/android/dialer/reverselookup/ReverseLookupSettingUtil;->isGServiceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/google/android/dialer/settings/GoogleDialerSettingsActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/android/dialer/extensions/GoogleDialtactsActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/android/dialer/DialtactsActivity;->handleMenuSettings()V

    goto :goto_0
.end method
