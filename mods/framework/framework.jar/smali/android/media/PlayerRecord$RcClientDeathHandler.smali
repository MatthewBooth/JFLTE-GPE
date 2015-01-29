.class Landroid/media/PlayerRecord$RcClientDeathHandler;
.super Ljava/lang/Object;
.source "PlayerRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcClientDeathHandler"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/media/PlayerRecord;


# direct methods
.method constructor <init>(Landroid/media/PlayerRecord;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2    # Landroid/os/IBinder;
    .param p3    # Landroid/app/PendingIntent;

    iput-object p1, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->this$0:Landroid/media/PlayerRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$000(Landroid/media/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;
    .locals 1
    .param p0    # Landroid/media/PlayerRecord$RcClientDeathHandler;

    iget-object v0, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MediaFocusControl"

    const-string v1, "  RemoteControlClient died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/media/PlayerRecord;->sController:Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/MediaFocusControl;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    sget-object v0, Landroid/media/PlayerRecord;->sController:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
