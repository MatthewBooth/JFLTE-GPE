.class Lcom/android/server/wm/WindowManagerService$RotationWatcher;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotationWatcher"
.end annotation


# instance fields
.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field watcher:Landroid/view/IRotationWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0
    .param p2    # Landroid/view/IRotationWatcher;
    .param p3    # Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->watcher:Landroid/view/IRotationWatcher;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method
