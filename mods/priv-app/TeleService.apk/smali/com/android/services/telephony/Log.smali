.class public final Lcom/android/services/telephony/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final DEBUG:Z

.field public static final ERROR:Z

.field public static final INFO:Z

.field public static final VERBOSE:Z

.field public static final WARN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/services/telephony/Log;->DEBUG:Z

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/services/telephony/Log;->INFO:Z

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/services/telephony/Log;->WARN:Z

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/services/telephony/Log;->ERROR:Z

    return-void
.end method

.method private static varargs buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/Object;

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    array-length v2, p2
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p1

    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Log"

    const-string v3, "IllegalFormatException: formatString=\'%s\' numArgs=%d"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v6

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v0, v3, v4}, Lcom/android/services/telephony/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (An error occurred while formatting the message.)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/Object;

    sget-boolean v0, Lcom/android/services/telephony/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Telephony"

    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/Throwable;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/Object;

    sget-boolean v0, Lcom/android/services/telephony/Log;->ERROR:Z

    if-eqz v0, :cond_0

    const-string v0, "Telephony"

    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string v0, "<null>"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/Object;

    sget-boolean v0, Lcom/android/services/telephony/Log;->INFO:Z

    if-eqz v0, :cond_0

    const-string v0, "Telephony"

    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .param p0    # I

    const-string v0, "Telephony"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/Object;

    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "Telephony"

    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/Object;

    sget-boolean v0, Lcom/android/services/telephony/Log;->WARN:Z

    if-eqz v0, :cond_0

    const-string v0, "Telephony"

    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/services/telephony/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telephony"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/Throwable;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/Object;

    const-string v0, "Telephony"

    invoke-static {p0, p2, p3}, Lcom/android/services/telephony/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
