.class public Lcom/android/phone/IINList;
.super Ljava/lang/Object;
.source "IINList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IINList$PriorityQueue;,
        Lcom/android/phone/IINList$IINInfo;
    }
.end annotation


# static fields
.field private static instance:Lcom/android/phone/IINList;


# instance fields
.field private final iinConfigs:Lcom/android/phone/IINList$PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/phone/IINList$PriorityQueue",
            "<",
            "Lcom/android/phone/IINList$IINInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final iinSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/phone/IINList$PriorityQueue;

    new-instance v1, Lcom/android/phone/IINList$1;

    invoke-direct {v1, p0}, Lcom/android/phone/IINList$1;-><init>(Lcom/android/phone/IINList;)V

    invoke-direct {v0, v1}, Lcom/android/phone/IINList$PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/phone/IINList;->iinConfigs:Lcom/android/phone/IINList$PriorityQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IINList;->iinSpnMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/phone/IINList;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/phone/IINList;->loadIINSpnMap()V

    invoke-direct {p0}, Lcom/android/phone/IINList;->loadIINConfigs()V

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/android/phone/IINList;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/android/phone/IINList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/IINList;->instance:Lcom/android/phone/IINList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/IINList;

    invoke-direct {v0, p0}, Lcom/android/phone/IINList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/IINList;->instance:Lcom/android/phone/IINList;

    :cond_0
    sget-object v0, Lcom/android/phone/IINList;->instance:Lcom/android/phone/IINList;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadIINConfigs()V
    .locals 6

    iget-object v4, p0, Lcom/android/phone/IINList;->iinConfigs:Lcom/android/phone/IINList$PriorityQueue;

    invoke-virtual {v4}, Lcom/android/phone/IINList$PriorityQueue;->clear()V

    iget-object v4, p0, Lcom/android/phone/IINList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :try_start_0
    const-string v4, "iins"

    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    new-instance v1, Lcom/android/phone/IINList$IINInfo;

    invoke-direct {v1}, Lcom/android/phone/IINList$IINInfo;-><init>()V

    const/4 v4, 0x0

    const-string v5, "pattern"

    invoke-interface {v2, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, v1, Lcom/android/phone/IINList$IINInfo;->pattern:Ljava/util/regex/Pattern;

    const/4 v4, 0x0

    const-string v5, "app_type"

    invoke-interface {v2, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/phone/IINList$IINInfo;->app:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "priority"

    invoke-interface {v2, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/phone/IINList$IINInfo;->priority:I

    const/4 v4, 0x0

    const-string v5, "network"

    invoke-interface {v2, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/phone/IINList$IINInfo;->network:I

    iget-object v4, p0, Lcom/android/phone/IINList;->iinConfigs:Lcom/android/phone/IINList$PriorityQueue;

    invoke-virtual {v4, v1}, Lcom/android/phone/IINList$PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "IIN_LIST"

    const-string v5, "failed to load iins_conf"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iins loaded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/IINList;->iinConfigs:Lcom/android/phone/IINList$PriorityQueue;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IINList;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method private loadIINSpnMap()V
    .locals 7

    iget-object v5, p0, Lcom/android/phone/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, p0, Lcom/android/phone/IINList;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f06000c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :try_start_0
    const-string v5, "iins"

    invoke-static {v2, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v5, 0x0

    const-string v6, "iin"

    invoke-interface {v2, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const-string v6, "spn"

    invoke-interface {v2, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "IIN_LIST"

    const-string v6, "failed to load iins"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iinSpnMap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/IINList;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v5
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "IIN_LIST"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getHighestPriority()I
    .locals 2

    iget-object v0, p0, Lcom/android/phone/IINList;->iinConfigs:Lcom/android/phone/IINList$PriorityQueue;

    invoke-virtual {v0}, Lcom/android/phone/IINList$PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IINList;->iinConfigs:Lcom/android/phone/IINList$PriorityQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/IINList$PriorityQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IINList$IINInfo;

    iget v0, v0, Lcom/android/phone/IINList$IINInfo;->priority:I

    goto :goto_0
.end method

.method public getIINConfig(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/phone/IINList$IINInfo;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/phone/IINList;->iinConfigs:Lcom/android/phone/IINList$PriorityQueue;

    invoke-virtual {v3}, Lcom/android/phone/IINList$PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IINList$IINInfo;

    iget-object v3, v1, Lcom/android/phone/IINList$IINInfo;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/phone/IINList$IINInfo;->app:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    iget-object v3, v1, Lcom/android/phone/IINList$IINInfo;->app:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    invoke-static {v1}, Lcom/android/phone/IINList$IINInfo;->from(Lcom/android/phone/IINList$IINInfo;)Lcom/android/phone/IINList$IINInfo;

    move-result-object v2

    goto :goto_0
.end method

.method public getIINPrefNetwork(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IINList;->getIINConfig(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/phone/IINList$IINInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/phone/IINList$IINInfo;->network:I

    goto :goto_0
.end method

.method public getIINPriority(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IINList;->getIINConfig(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/phone/IINList$IINInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/phone/IINList$IINInfo;->priority:I

    goto :goto_0
.end method

.method public getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/IINList;->iinSpnMap:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/phone/IINList;->iinSpnMap:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
