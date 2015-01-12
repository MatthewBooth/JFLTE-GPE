.class public Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;
.super Ljava/lang/Object;
.source "VoicemailStatusHelperImpl.java"

# interfaces
.implements Lcom/android/dialer/voicemail/VoicemailStatusHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;,
        Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;,
        Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source_package"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "configuration_state"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "data_channel_state"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "notification_channel_state"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "settings_uri"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "voicemail_access_uri"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMessageForStatusEntry(Landroid/database/Cursor;)Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    .locals 9
    .param p1    # Landroid/database/Cursor;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->getOverallState(III)Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->getAction()Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    move-result-object v6

    sget-object v2, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    if-eq v6, v2, :cond_0

    const/4 v5, 0x0

    sget-object v2, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    if-ne v6, v2, :cond_3

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :cond_2
    new-instance v8, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    invoke-virtual {v7}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->getCallLogMessageId()I

    move-result v2

    invoke-virtual {v7}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->getCallDetailsMessageId()I

    move-result v3

    invoke-virtual {v6}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->getMessageId()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;-><init>(Ljava/lang/String;IIILandroid/net/Uri;)V

    invoke-virtual {v7}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->getPriority()I

    move-result v2

    invoke-direct {v8, v0, v2}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;-><init>(Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;I)V

    move-object v0, v8

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CONFIGURE_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    if-ne v6, v2, :cond_2

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0
.end method

.method private getOverallState(III)Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-nez p1, :cond_5

    if-nez p2, :cond_2

    if-nez p3, :cond_0

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->OK:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    :goto_0
    return-object v0

    :cond_0
    if-ne p3, v1, :cond_1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    :cond_1
    if-ne p3, v0, :cond_7

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_NOTIFICATIONS:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_7

    if-nez p3, :cond_3

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DATA:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    :cond_3
    if-ne p3, v1, :cond_4

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->MESSAGE_WAITING:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    :cond_4
    if-ne p3, v0, :cond_7

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_CONNECTION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    :cond_6
    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NOT_CONFIGURED:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVALID:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    goto :goto_0
.end method

.method private isVoicemailSourceActive(Landroid/database/Cursor;)Z
    .locals 3
    .param p1    # Landroid/database/Cursor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private reorderMessages(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$1;-><init>(Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    # getter for: Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->mMessage:Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->access$100(Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public getNumberActivityVoicemailSources(Landroid/database/Cursor;)I
    .locals 2
    .param p1    # Landroid/database/Cursor;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->isVoicemailSourceActive(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->getMessageForStatusEntry(Landroid/database/Cursor;)Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->reorderMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
