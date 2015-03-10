.class final Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;
.super Ljava/lang/Object;
.source "NewOutgoingCallIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;
    }
.end annotation


# instance fields
.field private final mCall:Lcom/android/server/telecom/Call;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mIsDefaultOrSystemPhoneApp:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/Call;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iput-object p3, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    iput-object p4, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    iput-boolean p5, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIsDefaultOrSystemPhoneApp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Lcom/android/server/telecom/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Lcom/android/server/telecom/CallsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    return-object v0
.end method

.method public static getGateWayInfoFromIntent(Landroid/content/Intent;Landroid/net/Uri;)Landroid/telecom/GatewayInfo;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telecom/GatewayInfo;

    invoke-direct {v1, v2, v0, p1}, Landroid/telecom/GatewayInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method final processIntent()I
    .locals 15

    const/4 v9, 0x2

    const/16 v4, 0x2c

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v0, "Processing call intent in OutgoingCallIntentBroadcaster."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "Empty handle obtained from the call intent."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x7

    :goto_0
    return v5

    :cond_0
    const-string v6, "voicemail"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Placing call immediately instead of waiting for  OutgoingCallBroadcastReceiver: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v12, v1, v5

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    const-string v1, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/telecom/CallsManager;->placeOutgoingCall(Lcom/android/server/telecom/Call;Landroid/net/Uri;Landroid/telecom/GatewayInfo;ZI)V

    goto :goto_0

    :cond_1
    const-string v0, "Unhandled intent %s. Ignoring and not placing call."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v12, v1, v5

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {v12, v0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Empty number obtained from the call intent."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0x26

    goto :goto_0

    :cond_3
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_4
    const-string v0, "Checking restrictions for number : %s"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v13}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {v0, v13}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    const-string v2, "isPotentialEmergencyNumber = %s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p0, v2, v7}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_7

    const-string v2, "ACTION_CALL_PRIVILEGED is used while the number is a potential emergency number. Using ACTION_CALL_EMERGENCY as an action instead."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v7}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    :goto_2
    const-string v7, " - updating action from CALL_PRIVILEGED to %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {p0, v7, v8}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "android.intent.action.CALL"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIsDefaultOrSystemPhoneApp:Z

    if-nez v0, :cond_8

    const-string v0, "Cannot call potential emergency number %s with CALL Intent %s unless caller is system or default dialer."

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v13, v2, v5

    aput-object v12, v2, v1

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x7f070000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070002

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "calling startActivity for default dialer: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v5, v4

    goto/16 :goto_0

    :cond_6
    move v0, v5

    goto/16 :goto_1

    :cond_7
    const-string v2, "android.intent.action.CALL"

    goto :goto_2

    :cond_8
    move v2, v1

    :goto_3
    if-eqz v2, :cond_9

    const-string v0, "Placing call immediately instead of waiting for  OutgoingCallBroadcastReceiver: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v12, v4, v5

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_f

    const-string v0, "sip"

    :goto_4
    iget-object v4, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    const-string v6, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iget-object v4, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    const-string v6, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iget-object v6, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v7, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    invoke-static {v0, v13, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/telecom/CallsManager;->placeOutgoingCall(Lcom/android/server/telecom/Call;Landroid/net/Uri;Landroid/telecom/GatewayInfo;ZI)V

    :cond_9
    if-nez v2, :cond_10

    move v0, v1

    :goto_5
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v13, :cond_a

    const-string v2, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v7, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    const/high16 v2, 0x10000000

    invoke-virtual {v7, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "Broadcasting intent: %s."

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v7, v4, v5

    invoke-static {p0, v2, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v12, :cond_b

    const-string v2, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {v12, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    :goto_6
    if-eqz v1, :cond_12

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v2, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    const-string v2, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Found and copied gateway provider extras to broadcast intent."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_7
    iget-object v6, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v9, "android.permission.PROCESS_OUTGOING_CALLS"

    if-eqz v0, :cond_13

    new-instance v10, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;

    invoke-direct {v10, p0, v5}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;-><init>(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;B)V

    :goto_8
    const/4 v12, -0x1

    move-object v11, v3

    move-object v14, v3

    invoke-virtual/range {v6 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_c
    const-string v7, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v0, :cond_d

    const-string v0, "Cannot call non-potential-emergency number %s with EMERGENCY_CALL Intent %s."

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v13, v2, v5

    aput-object v12, v2, v1

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v4

    goto/16 :goto_0

    :cond_d
    move v2, v1

    goto/16 :goto_3

    :cond_e
    const-string v0, "Unhandled Intent %s. Ignoring and not placing call."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v12, v1, v5

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x7

    goto/16 :goto_0

    :cond_f
    const-string v0, "tel"

    goto/16 :goto_4

    :cond_10
    move v0, v5

    goto/16 :goto_5

    :cond_11
    move v1, v5

    goto :goto_6

    :cond_12
    const-string v1, "No provider extras found in call intent."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_13
    move-object v10, v3

    goto :goto_8

    :cond_14
    move v2, v5

    goto/16 :goto_3
.end method
