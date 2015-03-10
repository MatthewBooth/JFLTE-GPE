.class public final Lcom/android/server/telecom/RespondViaSmsManager;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "RespondViaSmsManager.java"


# static fields
.field private static final sInstance:Lcom/android/server/telecom/RespondViaSmsManager;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/telecom/RespondViaSmsManager;

    invoke-direct {v0}, Lcom/android/server/telecom/RespondViaSmsManager;-><init>()V

    sput-object v0, Lcom/android/server/telecom/RespondViaSmsManager;->sInstance:Lcom/android/server/telecom/RespondViaSmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    new-instance v0, Lcom/android/server/telecom/RespondViaSmsManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/RespondViaSmsManager$1;-><init>(Lcom/android/server/telecom/RespondViaSmsManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/RespondViaSmsManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/RespondViaSmsManager;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/RespondViaSmsManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/RespondViaSmsManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/telecom/RespondViaSmsManager;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/RespondViaSmsManager;->sInstance:Lcom/android/server/telecom/RespondViaSmsManager;

    return-object v0
.end method


# virtual methods
.method public final loadCannedTextMessages(Landroid/telecom/Response;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Response",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/telecom/RespondViaSmsManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/telecom/RespondViaSmsManager$2;-><init>(Lcom/android/server/telecom/RespondViaSmsManager;Landroid/content/Context;Landroid/telecom/Response;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/RespondViaSmsManager$2;->start()V

    return-void
.end method

.method public final bridge synthetic onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    return-void
.end method

.method public final bridge synthetic onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallAdded(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallRemoved(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallStateChanged(Lcom/android/server/telecom/Call;II)V

    return-void
.end method

.method public final bridge synthetic onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    return-void
.end method

.method public final bridge synthetic onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "smsto"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v4, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    iput-object v1, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/RespondViaSmsManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public final bridge synthetic onIsConferencedChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsConferencedChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onRingbackRequested(Lcom/android/server/telecom/Call;Z)V

    return-void
.end method
