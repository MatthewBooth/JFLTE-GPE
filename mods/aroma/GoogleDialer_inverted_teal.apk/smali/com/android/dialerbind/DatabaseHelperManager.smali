.class public Lcom/android/dialerbind/DatabaseHelperManager;
.super Ljava/lang/Object;
.source "DatabaseHelperManager.java"


# direct methods
.method public static getDatabaseHelper(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    move-result-object v0

    return-object v0
.end method
