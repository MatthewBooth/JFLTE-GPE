.class final Lcom/android/server/fingerprint/FingerprintService$ClientData;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientData"
.end annotation


# instance fields
.field public receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

.field state:I

.field public tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

.field userId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService$1;)V
    .locals 0
    .param p1    # Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$ClientData;-><init>()V

    return-void
.end method


# virtual methods
.method getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
