.class public Lcom/android/phone/HfaService;
.super Landroid/app/Service;
.source "HfaService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHfaLogic:Lcom/android/phone/HfaLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/HfaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HfaService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/HfaService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/HfaService;)V
    .locals 0
    .param p0    # Lcom/android/phone/HfaService;

    invoke-direct {p0}, Lcom/android/phone/HfaService;->onComplete()V

    return-void
.end method

.method private onComplete()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/HfaService;->stopSelf()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    sget-object v0, Lcom/android/phone/HfaService;->TAG:Ljava/lang/String;

    const-string v1, "service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    const-string v1, "otasp_result_code_pending_intent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    new-instance v1, Lcom/android/phone/HfaLogic;

    new-instance v2, Lcom/android/phone/HfaService$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HfaService$1;-><init>(Lcom/android/phone/HfaService;)V

    invoke-direct {v1, p0, v2, v0}, Lcom/android/phone/HfaLogic;-><init>(Landroid/content/Context;Lcom/android/phone/HfaLogic$HfaLogicCallback;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/android/phone/HfaService;->mHfaLogic:Lcom/android/phone/HfaLogic;

    iget-object v1, p0, Lcom/android/phone/HfaService;->mHfaLogic:Lcom/android/phone/HfaLogic;

    invoke-virtual {v1}, Lcom/android/phone/HfaLogic;->start()V

    const/4 v1, 0x3

    return v1
.end method
