.class public Lcom/android/dialer/CallDetailActivity;
.super Lcom/android/dialerbind/analytics/AnalyticsActivity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/dialer/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;,
        Lcom/android/dialer/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountLabel:Landroid/widget/TextView;

.field private mAsyncQueryHandler:Lcom/android/dialer/CallDetailActivityQueryHandler;

.field private mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field private mBidiFormatter:Landroid/text/BidiFormatter;

.field private mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

.field private mCallerName:Landroid/widget/TextView;

.field private mCallerNumber:Landroid/widget/TextView;

.field private mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mHasEditNumberBeforeCallOption:Z

.field private mHasRemoveFromCallLogOption:Z

.field private mHasTrashOption:Z

.field mInflater:Landroid/view/LayoutInflater;

.field private mNumber:Ljava/lang/String;

.field private mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

.field private final mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

.field private mQuickContactBadge:Landroid/widget/QuickContactBadge;

.field mResources:Landroid/content/res/Resources;

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mVoicemailHeader:Landroid/widget/LinearLayout;

.field private mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

.field private mVoicemailTranscription:Landroid/widget/TextView;

.field private mVoicemailUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "presentation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "subscription_component_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "subscription_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "features"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data_usage"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "transcription"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/dialerbind/analytics/AnalyticsActivity;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBidiFormatter:Landroid/text/BidiFormatter;

    new-instance v0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;
    .param p1    # Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/CallDetailActivity;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/android/dialer/CallDetailActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/dialer/CallDetailActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallTypeHelper;
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/ContactInfoHelper;
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailTranscription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0    # Lcom/android/dialer/CallDetailActivity;
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/net/Uri;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I

    invoke-direct/range {p0 .. p5}, Lcom/android/dialer/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/CallDetailActivity;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/dialer/CallDetailActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dialer/CallDetailActivity;)Landroid/text/BidiFormatter;
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mBidiFormatter:Landroid/text/BidiFormatter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallerName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallerNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/dialer/CallDetailActivity;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAccountLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/dialer/CallDetailActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/dialer/CallDetailActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/dialer/CallDetailActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/dialer/CallDetailActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/CallDetailActivity;->mHasTrashOption:Z

    return p1
.end method

.method private closeSystemDialogs()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    new-array v4, v5, [Landroid/net/Uri;

    aput-object v3, v4, v2

    :cond_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    new-array v4, v2, [Landroid/net/Uri;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    aget-wide v6, v0, v1

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    array-length v2, v0

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;
    .locals 30
    .param p1    # Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/dialer/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    if-eqz v25, :cond_0

    :try_start_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot find content: "

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v25, :cond_1

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3

    :cond_2
    const/4 v3, 0x2

    :try_start_1
    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x6

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v3, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/4 v3, 0x4

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x5

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v3, 0xb

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v3, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x8

    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccountLabel(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/dialer/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    :cond_3
    invoke-static {v4, v5}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-direct {v3}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v3, v4, v7}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v27

    :goto_0
    if-nez v27, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v5, v9}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v14, ""

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_1
    const/16 v3, 0x9

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v23, 0x0

    const/16 v3, 0xa

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0xa

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    :cond_4
    new-instance v3, Lcom/android/dialer/PhoneCallDetails;

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/16 v21, 0x0

    aput v26, v9, v21

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v24}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Long;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v25, :cond_5

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v3

    :cond_6
    const/16 v27, 0x0

    goto :goto_0

    :cond_7
    :try_start_2
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v14, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    iget v15, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    move/from16 v19, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getStatusMessage(Landroid/database/Cursor;)Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
    .locals 6
    .param p1    # Landroid/database/Cursor;

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    const-string v1, "CallDetail"

    const-string v2, "Expected 1, found (%d) num of status messages. Will use the first one."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    goto :goto_0
.end method

.method private hasVoicemail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/net/Uri;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v5, p3, p4, p5, v4}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08023a

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p3, v6, v3

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method

.method private markVoicemailAsRead(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/CallDetailActivity$1;-><init>(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private optionallyHandleVoicemail()V
    .locals 9

    const v8, 0x7f0e006d

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f04000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailHeader:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailHeader:Landroid/widget/LinearLayout;

    const v6, 0x7f0e006b

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailHeader:Landroid/widget/LinearLayout;

    const v6, 0x7f0e008d

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailHeader:Landroid/widget/LinearLayout;

    const v6, 0x7f0e008e

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailHeader:Landroid/widget/LinearLayout;

    const v6, 0x7f0e006c

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailTranscription:Landroid/widget/TextView;

    const v5, 0x7f0e0065

    invoke-virtual {p0, v5}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "voicemail_fragment"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    invoke-direct {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "EXTRA_VOICEMAIL_URI"

    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {v3, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "voicemail_fragment"

    invoke-virtual {v5, v8, v3, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/dialer/CallDetailActivityQueryHandler;

    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/dialer/CallDetailActivityQueryHandler;->startVoicemailStatusQuery(Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailUri:Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/android/dialer/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4
    .param p1    # [Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/android/dialer/CallDetailActivity;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/dialer/ProximitySensorManager;->disable(Z)V

    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/dialer/ProximitySensorManager;->enable()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->setContentView(I)V

    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/android/dialer/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    new-instance v0, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    new-instance v0, Lcom/android/dialer/CallDetailActivityQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivityQueryHandler;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/dialer/CallDetailActivityQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailUri:Landroid/net/Uri;

    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mQuickContactBadge:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e0062

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallerName:Landroid/widget/TextView;

    const v0, 0x7f0e0063

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallerNumber:Landroid/widget/TextView;

    const v0, 0x7f0e0064

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAccountLabel:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    new-instance v0, Lcom/android/dialer/ProximitySensorManager;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/dialer/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    new-instance v0, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->optionallyHandleVoicemail()V

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_FROM_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->closeSystemDialogs()V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f08024e

    invoke-static {p0, v1, v2}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuEditNumberBeforeCall(Landroid/view/MenuItem;)V
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 9
    .param p1    # Landroid/view/MenuItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v6, Lcom/android/dialer/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v7, Lcom/android/dialer/CallDetailActivity$3;

    invoke-direct {v7, p0, v1}, Lcom/android/dialer/CallDetailActivity$3;-><init>(Lcom/android/dialer/CallDetailActivity;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onMenuTrashVoicemail(Landroid/view/MenuItem;)V
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/android/dialer/CallDetailActivity$4;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->disableProximitySensor(Z)V

    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;

    const v0, 0x7f0e0127

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0e0128

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0e0126

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mHasTrashOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    return-void
.end method

.method protected updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 4
    .param p1    # Landroid/database/Cursor;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->getStatusMessage(Landroid/database/Cursor;)Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallDetails()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->callDetailsMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget v1, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget-object v1, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/android/dialer/CallDetailActivity$2;-><init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
