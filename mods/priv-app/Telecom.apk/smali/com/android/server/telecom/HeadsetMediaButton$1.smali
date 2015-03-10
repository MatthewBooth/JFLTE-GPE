.class final Lcom/android/server/telecom/HeadsetMediaButton$1;
.super Landroid/media/session/MediaSession$Callback;
.source "HeadsetMediaButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/HeadsetMediaButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/HeadsetMediaButton;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/HeadsetMediaButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/HeadsetMediaButton$1;->this$0:Lcom/android/server/telecom/HeadsetMediaButton;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    const-string v2, "SessionCallback.onMediaButton()...  event = %s."

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_0

    const-string v2, "SessionCallback: HEADSETHOOK"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/HeadsetMediaButton$1;->this$0:Lcom/android/server/telecom/HeadsetMediaButton;

    invoke-static {v2, v0}, Lcom/android/server/telecom/HeadsetMediaButton;->access$000(Lcom/android/server/telecom/HeadsetMediaButton;Landroid/view/KeyEvent;)Z

    move-result v0

    const-string v2, "==> handleHeadsetHook(): consumed = %b."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
