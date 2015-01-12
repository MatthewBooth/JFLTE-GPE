.class Lcom/google/android/gms/analytics/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/m;


# instance fields
.field private final Bh:Lorg/apache/http/client/HttpClient;

.field private Bi:Ljava/net/URL;

.field private final mContext:Landroid/content/Context;

.field private final vV:Ljava/lang/String;

.field private yt:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V
    .locals 1

    invoke-static {p2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/analytics/ae;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ae;->mContext:Landroid/content/Context;

    const-string v1, "GoogleAnalytics"

    const-string v2, "3.0"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/ah;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/analytics/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ae;->vV:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/ae;->Bh:Lorg/apache/http/client/HttpClient;

    iput-object p2, p0, Lcom/google/android/gms/analytics/ae;->yt:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-void
.end method

.method private a(Lcom/google/android/gms/analytics/y;Ljava/net/URL;Z)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/y;->eG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ae;->eN()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->Bi:Ljava/net/URL;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->Bi:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/y;->eG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/ae;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "Host"

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/analytics/x;->eF()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/ae;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/analytics/ae;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/analytics/p;->A(Landroid/content/Context;)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/analytics/ae;->Bh:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_4
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "ClientProtocolException sending monitoring hit."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://ssl.google-analytics.com/collect"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception sending monitoring hit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, p2

    goto/16 :goto_1
.end method

.method private a(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    const-string v0, "POST:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Error Writing hit to log..."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Empty hit, discarding."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x7f4

    if-ge v0, v3, :cond_1

    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/google/android/gms/analytics/ae;->vV:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v2, "POST"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Encoding error, discarding hit"

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/google/android/gms/analytics/y;Z)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/u;",
            ">;",
            "Lcom/google/android/gms/analytics/y;",
            "Z)I"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    const-string v0, "_hr"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/analytics/y;->e(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_a

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/u;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/ae;->a(Lcom/google/android/gms/analytics/u;)Ljava/net/URL;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/google/android/gms/analytics/x;->eF()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No destination: discarding hit: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/u;->eA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v12, v3

    move v3, v0

    move-object v0, v12

    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move-object v3, v0

    goto :goto_0

    :cond_0
    const-string v0, "No destination: discarding hit."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v9

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/u;->eA()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v0, ""

    :goto_3
    invoke-direct {p0, v0, v8}, Lcom/google/android/gms/analytics/ae;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;

    move-result-object v8

    if-nez v8, :cond_3

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    move-object v0, v4

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lcom/google/android/gms/analytics/v;->a(Lcom/google/android/gms/analytics/u;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const-string v9, "Host"

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/analytics/x;->eF()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0, v8}, Lcom/google/android/gms/analytics/ae;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x2000

    if-le v9, v10, :cond_6

    const-string v3, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v3}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    :cond_5
    :goto_4
    const-string v3, "_td"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p2, v3, v0}, Lcom/google/android/gms/analytics/y;->e(Ljava/lang/String;I)V

    add-int/lit8 v0, v5, 0x1

    move v3, v0

    move-object v0, v4

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/google/android/gms/analytics/ae;->yt:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v9}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v3, "Dry run enabled. Hit not actually sent."

    invoke-static {v3}, Lcom/google/android/gms/analytics/x;->i(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    :try_start_0
    iget-object v9, p0, Lcom/google/android/gms/analytics/ae;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/gms/analytics/p;->A(Landroid/content/Context;)V

    const/4 v1, 0x0

    :cond_8
    iget-object v9, p0, Lcom/google/android/gms/analytics/ae;->Bh:Lorg/apache/http/client/HttpClient;

    invoke-interface {v9, v3, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_9
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :catch_0
    move-exception v3

    const-string v3, "ClientProtocolException sending hit; discarding hit..."

    invoke-static {v3}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    const-string v3, "_hd"

    invoke-virtual {p2, v3, v2}, Lcom/google/android/gms/analytics/y;->e(Ljava/lang/String;I)V

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception sending hit: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    const-string v0, "_de"

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v3}, Lcom/google/android/gms/analytics/y;->e(Ljava/lang/String;I)V

    const-string v0, "_hd"

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/analytics/y;->e(Ljava/lang/String;I)V

    const-string v0, "_hs"

    invoke-virtual {p2, v0, v5}, Lcom/google/android/gms/analytics/y;->e(Ljava/lang/String;I)V

    invoke-direct {p0, p2, v4, v1}, Lcom/google/android/gms/analytics/ae;->a(Lcom/google/android/gms/analytics/y;Ljava/net/URL;Z)V

    move v0, v5

    :goto_5
    return v0

    :cond_a
    const-string v0, "_hd"

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/analytics/y;->e(Ljava/lang/String;I)V

    const-string v0, "_hs"

    invoke-virtual {p2, v0, v5}, Lcom/google/android/gms/analytics/y;->e(Ljava/lang/String;I)V

    if-eqz p3, :cond_b

    invoke-direct {p0, p2, v3, v1}, Lcom/google/android/gms/analytics/ae;->a(Lcom/google/android/gms/analytics/y;Ljava/net/URL;Z)V

    :cond_b
    move v0, v5

    goto :goto_5
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/android/gms/analytics/u;)Ljava/net/URL;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->Bi:Ljava/net/URL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->Bi:Ljava/net/URL;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/u;->eD()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v2, "http:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http://www.google-analytics.com/collect"

    :goto_1
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Error trying to parse the hardcoded host url. This really shouldn\'t happen."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "https://ssl.google-analytics.com/collect"
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public dT()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "...no network connectivity"

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method eN()Z
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overrideHostUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ae;->Bi:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ae;->Bi:Ljava/net/URL;

    goto :goto_0
.end method
