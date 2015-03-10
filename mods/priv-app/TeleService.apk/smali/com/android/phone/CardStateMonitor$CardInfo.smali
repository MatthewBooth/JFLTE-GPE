.class Lcom/android/phone/CardStateMonitor$CardInfo;
.super Ljava/lang/Object;
.source "CardStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CardStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardInfo"
.end annotation


# instance fields
.field mCardState:Ljava/lang/String;

.field mIccId:Ljava/lang/String;

.field mLoadingIcc:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CardStateMonitor$CardInfo;)V
    .locals 0
    .param p0    # Lcom/android/phone/CardStateMonitor$CardInfo;

    invoke-direct {p0}, Lcom/android/phone/CardStateMonitor$CardInfo;->reset()V

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CardStateMonitor$CardInfo;->mLoadingIcc:Z

    iput-object v1, p0, Lcom/android/phone/CardStateMonitor$CardInfo;->mIccId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CardStateMonitor$CardInfo;->mCardState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method isCardAvailable()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardStateEquals(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CardStateMonitor$CardInfo;->isCardStateEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor$CardInfo;->mIccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCardStateEquals(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/CardStateMonitor$CardInfo;->mCardState:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
