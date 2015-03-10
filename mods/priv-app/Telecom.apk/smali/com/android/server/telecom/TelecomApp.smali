.class public final Lcom/android/server/telecom/TelecomApp;
.super Landroid/app/Application;
.source "TelecomApp.java"


# instance fields
.field private mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

.field private mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

.field private mTelecomService:Lcom/android/server/telecom/TelecomServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method final getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    return-object v0
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/MissedCallNotifier;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    new-instance v0, Lcom/android/server/telecom/CallsManager;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomApp;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v2, p0, Lcom/android/server/telecom/TelecomApp;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/telecom/CallsManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-static {v0}, Lcom/android/server/telecom/CallsManager;->initialize(Lcom/android/server/telecom/CallsManager;)V

    new-instance v0, Lcom/android/server/telecom/TelecomServiceImpl;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomApp;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v2, p0, Lcom/android/server/telecom/TelecomApp;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iget-object v3, p0, Lcom/android/server/telecom/TelecomApp;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/telecom/TelecomServiceImpl;-><init>(Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/PhoneAccountRegistrar;Lcom/android/server/telecom/CallsManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mTelecomService:Lcom/android/server/telecom/TelecomServiceImpl;

    const-string v0, "telecom"

    iget-object v1, p0, Lcom/android/server/telecom/TelecomApp;->mTelecomService:Lcom/android/server/telecom/TelecomServiceImpl;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
