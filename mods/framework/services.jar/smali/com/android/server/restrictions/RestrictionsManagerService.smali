.class public final Lcom/android/server/restrictions/RestrictionsManagerService;
.super Lcom/android/server/SystemService;
.source "RestrictionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RestrictionsManagerService"


# instance fields
.field private final mRestrictionsManagerImpl:Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;-><init>(Lcom/android/server/restrictions/RestrictionsManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService;->mRestrictionsManagerImpl:Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0    # Lcom/android/server/restrictions/RestrictionsManagerService;
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/restrictions/RestrictionsManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0    # Lcom/android/server/restrictions/RestrictionsManagerService;
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/restrictions/RestrictionsManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    const-string v0, "restrictions"

    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService;->mRestrictionsManagerImpl:Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/restrictions/RestrictionsManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
