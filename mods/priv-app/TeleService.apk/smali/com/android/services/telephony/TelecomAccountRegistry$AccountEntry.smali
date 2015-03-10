.class final Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
.super Ljava/lang/Object;
.source "TelecomAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelecomAccountRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccountEntry"
.end annotation


# instance fields
.field private final mAccount:Landroid/telecom/PhoneAccount;

.field private final mIncomingCallNotifier:Lcom/android/services/telephony/PstnIncomingCallNotifier;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic this$0:Lcom/android/services/telephony/TelecomAccountRegistry;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelecomAccountRegistry;Lcom/android/internal/telephony/Phone;ZZ)V
    .locals 4
    .param p2    # Lcom/android/internal/telephony/Phone;
    .param p3    # Z
    .param p4    # Z

    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p3, p4}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->registerPstnPhoneAccount(ZZ)Landroid/telecom/PhoneAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    const-string v0, "Registered phoneAccount: %s with handle: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/android/services/telephony/PstnIncomingCallNotifier;

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v1, v0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;-><init>(Lcom/android/internal/telephony/PhoneProxy;)V

    iput-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIncomingCallNotifier:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    return-void
.end method

.method private registerPstnPhoneAccount(ZZ)Landroid/telecom/PhoneAccount;
    .locals 23
    .param p1    # Z
    .param p2    # Z

    if-eqz p2, :cond_2

    const-string v7, "Dummy "

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    # invokes: Lcom/android/services/telephony/TelecomAccountRegistry;->makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;
    invoke-static {v0, v7, v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$000(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v16

    const/16 v12, -0x3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v18, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$100(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v9, ""

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1

    const-string v15, ""

    :cond_1
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v18, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0802ac

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v18, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0802ad

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    const/16 v5, 0x16

    invoke-static {v10, v8}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v18

    const-string v19, "tel"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v9, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/telecom/PhoneAccount$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v18

    const-string v19, "tel"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v15, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/telecom/PhoneAccount$Builder;->setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/services/telephony/TelecomAccountRegistry;->getPhoneAccountIcon(I)I
    invoke-static {v0, v12}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$300(Lcom/android/services/telephony/TelecomAccountRegistry;I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/telecom/PhoneAccount$Builder;->setIconResId(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/telecom/PhoneAccount$Builder;->setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "tel"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "voicemail"

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/telecom/PhoneAccount$Builder;->setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v18, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mTelecomManager:Landroid/telecom/TelecomManager;
    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$400(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telecom/TelecomManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    return-object v4

    :cond_2
    const-string v7, ""

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v18, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$100(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v18, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$100(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    goto/16 :goto_1

    :cond_4
    const/4 v14, 0x0

    invoke-static/range {v16 .. v17}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v14, v11, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    iget v12, v11, Landroid/telephony/SubInfoRecord;->slotId:I

    :cond_5
    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string v18, "Could not get a display name for subid: %d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v18, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0802ae

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v13, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v19, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0802ae

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v13, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v18, v0

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$200(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080091

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2
.end method


# virtual methods
.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method teardown()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIncomingCallNotifier:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    invoke-virtual {v0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->teardown()V

    return-void
.end method
