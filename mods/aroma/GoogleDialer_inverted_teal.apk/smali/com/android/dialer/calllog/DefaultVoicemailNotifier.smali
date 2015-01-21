.class public Lcom/android/dialer/calllog/DefaultVoicemailNotifier;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$1;,
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;,
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;,
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;,
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;,
        Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNameLookupQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;

.field private final mNewCallsQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/app/NotificationManager;
    .param p3    # Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;
    .param p4    # Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;
    .param p5    # Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p3, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    iput-object p4, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    iput-object p5, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    return-void
.end method

.method private createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/dialer/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static createNameLookupQuery(Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;
    .locals 2
    .param p0    # Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$1;)V

    return-object v0
.end method

.method public static createNewCallsQuery(Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;
    .locals 2
    .param p0    # Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$1;)V

    return-object v0
.end method

.method public static createPhoneNumberHelper(Landroid/content/Context;)Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;
    .locals 2
    .param p0    # Landroid/content/Context;

    new-instance v0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier;
    .locals 8
    .param p0    # Landroid/content/Context;

    const-class v7, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    if-nez v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    invoke-static {v6}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->createNewCallsQuery(Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    move-result-object v3

    invoke-static {v6}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->createNameLookupQuery(Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    move-result-object v4

    invoke-static {p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->createPhoneNumberHelper(Landroid/content/Context;)Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;)V

    sput-object v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method


# virtual methods
.method public clearNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "DefaultVoicemailNotifier"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public updateNotification(Landroid/net/Uri;)V
    .locals 24
    .param p1    # Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCallsQuery;->query()[Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;

    move-result-object v14

    if-nez v14, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v0, v14

    move/from16 v19, v0

    if-nez v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->clearNotification()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    const/4 v5, 0x0

    move-object v4, v14

    array-length v10, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_6

    aget-object v13, v4, v8

    iget-object v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->numberPresentation:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->getDisplayName(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NameLookupQuery;->query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    iget-object v11, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    :cond_2
    iget-object v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object v6, v11

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    iget-object v0, v13, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    move-object v5, v13

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const v19, 0x7f0801fa

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v6, v20, v21

    const/16 v21, 0x1

    aput-object v11, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    if-nez v5, :cond_7

    const-string v19, "DefaultVoicemailNotifier"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "The new call could not be found in the call log: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const v19, 0x7f0f0001

    array-length v0, v14

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    array-length v0, v14

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const v9, 0x108007e

    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v20, 0x108007e

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f090017

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v20

    if-eqz v5, :cond_9

    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v15

    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-class v20, Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v19, 0x0

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->callsUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v19, "EXTRA_VOICEMAIL_URI"

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-class v20, Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v19, 0x0

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->callsUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v19, "EXTRA_VOICEMAIL_URI"

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v19, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v19, "EXTRA_FROM_NOTIFICATION"

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v19, 0x7f020096

    const v20, 0x7f0801f9

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v16

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    if-eqz v5, :cond_8

    const v19, 0x7f0801fb

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v5, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    const-string v20, "DefaultVoicemailNotifier"

    const/16 v21, 0x1

    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_a
    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.intent.action.VIEW"

    sget-object v20, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v19, "android.provider.extra.CALL_TYPE_FILTER"

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4
.end method
