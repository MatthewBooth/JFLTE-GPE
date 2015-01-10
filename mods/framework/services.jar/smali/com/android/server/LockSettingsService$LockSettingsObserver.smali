.class Lcom/android/server/LockSettingsService$LockSettingsObserver;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockSettingsObserver"
.end annotation


# instance fields
.field remote:Lcom/android/internal/widget/ILockSettingsObserver;

.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$LockSettingsObserver;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V
    .locals 0
    .param p1    # Lcom/android/server/LockSettingsService;
    .param p2    # Lcom/android/server/LockSettingsService$1;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$LockSettingsObserver;-><init>(Lcom/android/server/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService$LockSettingsObserver;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$400(Lcom/android/server/LockSettingsService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
