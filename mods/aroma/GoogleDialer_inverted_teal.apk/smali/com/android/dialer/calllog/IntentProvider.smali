.class public abstract Lcom/android/dialer/calllog/IntentProvider;
.super Ljava/lang/Object;
.source "IntentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/calllog/IntentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/IntentProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallDetailIntentProvider(J[JLjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 2
    .param p0    # J
    .param p2    # [J
    .param p3    # Ljava/lang/String;

    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$4;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/android/dialer/calllog/IntentProvider$4;-><init>(Ljava/lang/String;[JJ)V

    return-object v0
.end method

.method public static getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 2
    .param p0    # J
    .param p2    # Ljava/lang/String;

    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/calllog/IntentProvider$3;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/dialer/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/telecom/PhoneAccountHandle;

    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/IntentProvider$1;-><init>(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method public static getReturnVideoCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/dialer/calllog/IntentProvider;->getReturnVideoCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnVideoCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/telecom/PhoneAccountHandle;

    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/IntentProvider$2;-><init>(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
