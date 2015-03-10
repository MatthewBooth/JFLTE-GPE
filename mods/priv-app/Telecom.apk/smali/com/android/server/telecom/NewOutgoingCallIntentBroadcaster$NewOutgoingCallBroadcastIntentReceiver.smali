.class final Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NewOutgoingCallIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NewOutgoingCallBroadcastIntentReceiver"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;-><init>(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v0, "onReceive: %s"

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;->getResultData()Ljava/lang/String;

    move-result-object v3

    const-string v0, "- got number from resultData: %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v3, :cond_1

    const-string v0, "Call cancelled (null number), returning..."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    # getter for: Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->access$100(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    # getter for: Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->access$100(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->disconnect()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    # getter for: Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->access$000(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Cannot modify outgoing call to emergency number %s."

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "sip"

    :goto_2
    const/4 v2, 0x0

    invoke-static {v0, v3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    # getter for: Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->access$200(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "Call number unmodified after new outgoing call intent broadcast."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    invoke-static {p2, v2}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->getGateWayInfoFromIntent(Landroid/content/Intent;Landroid/net/Uri;)Landroid/telecom/GatewayInfo;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    # getter for: Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->access$300(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    # getter for: Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v1}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->access$100(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Lcom/android/server/telecom/Call;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    # getter for: Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->access$200(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Intent;

    move-result-object v4

    const-string v6, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v6, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    # getter for: Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->access$200(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/telecom/CallsManager;->placeOutgoingCall(Lcom/android/server/telecom/Call;Landroid/net/Uri;Landroid/telecom/GatewayInfo;ZI)V

    goto :goto_1

    :cond_3
    const-string v0, "tel"

    goto :goto_2

    :cond_4
    const-string v3, "Retrieved modified handle after outgoing call intent broadcast: Original: %s, Modified: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move v0, v5

    goto/16 :goto_0
.end method
