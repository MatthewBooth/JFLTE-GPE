.class public Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsWrapper.java"


# static fields
.field public static final INSTANCE:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

.field private static final LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-direct {v0}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;-><init>()V

    sput-object v0, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->INSTANCE:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-3"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canPlaceCallsTo(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isLegacyUnknownNumbers(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLegacyUnknownNumbers(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0    # Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnknownNumberThatCanBeLookedUp(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->INSTANCE:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-virtual {v1, p0}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isLegacyUnknownNumbers(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isSipNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoicemailNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
