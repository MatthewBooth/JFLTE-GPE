.class public Lcom/android/incallui/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallerInfoAsyncQuery$1;,
        Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/net/Uri;

    invoke-static {p0}, Lcom/android/incallui/CallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/CallerInfoAsyncQuery;)V
    .locals 0
    .param p0    # Lcom/android/incallui/CallerInfoAsyncQuery;

    invoke-direct {p0}, Lcom/android/incallui/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/incallui/CallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method

.method private release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # setter for: Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;
    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$602(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;

    iput-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/net/Uri;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/incallui/CallerInfoAsyncQuery;
    .locals 9
    .param p0    # I
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/incallui/CallerInfo;
    .param p3    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4    # Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "##### CallerInfoAsyncQuery startQuery()... #####"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- number: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- cookie: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sip"

    iget-object v5, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v8, Lcom/android/incallui/CallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/incallui/CallerInfoAsyncQuery;-><init>()V

    invoke-direct {v8, p1, v3}, Lcom/android/incallui/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery$1;)V

    iput-object p3, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-object p4, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iput v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    :goto_0
    iget-object v0, v8, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_0
    invoke-virtual {p2}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x5

    iput v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_0
.end method
