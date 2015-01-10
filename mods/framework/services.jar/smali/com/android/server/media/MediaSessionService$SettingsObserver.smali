.class final Lcom/android/server/media/MediaSessionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mSecureSettingsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->this$0:Lcom/android/server/media/MediaSessionService;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService$1;)V
    .locals 0
    .param p1    # Lcom/android/server/media/MediaSessionService;
    .param p2    # Lcom/android/server/media/MediaSessionService$1;

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SettingsObserver;-><init>(Lcom/android/server/media/MediaSessionService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaSessionService$SettingsObserver;)V
    .locals 0
    .param p0    # Lcom/android/server/media/MediaSessionService$SettingsObserver;

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SettingsObserver;->observe()V

    return-void
.end method

.method private observe()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->updateActiveSessionListeners()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)V

    return-void
.end method
