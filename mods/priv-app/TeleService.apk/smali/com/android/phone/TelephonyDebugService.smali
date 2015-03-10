.class public Lcom/android/phone/TelephonyDebugService;
.super Landroid/app/Service;
.source "TelephonyDebugService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDebugService:Lcom/android/internal/telephony/DebugService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TelephonyDebugService"

    sput-object v0, Lcom/android/phone/TelephonyDebugService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/DebugService;

    invoke-direct {v0}, Lcom/android/internal/telephony/DebugService;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TelephonyDebugService;->mDebugService:Lcom/android/internal/telephony/DebugService;

    sget-object v0, Lcom/android/phone/TelephonyDebugService;->TAG:Ljava/lang/String;

    const-string v1, "TelephonyDebugService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/TelephonyDebugService;->mDebugService:Lcom/android/internal/telephony/DebugService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/DebugService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x0

    return-object v0
.end method
