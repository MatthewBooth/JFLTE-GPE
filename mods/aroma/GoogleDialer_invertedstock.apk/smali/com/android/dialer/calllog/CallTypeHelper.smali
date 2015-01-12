.class public Lcom/android/dialer/calllog/CallTypeHelper;
.super Ljava/lang/Object;
.source "CallTypeHelper.java"


# instance fields
.field private final mIncomingName:Ljava/lang/CharSequence;

.field private final mIncomingVideoName:Ljava/lang/CharSequence;

.field private final mMissedName:Ljava/lang/CharSequence;

.field private final mMissedVideoName:Ljava/lang/CharSequence;

.field private final mNewMissedColor:I

.field private final mNewVoicemailColor:I

.field private final mOutgoingName:Ljava/lang/CharSequence;

.field private final mOutgoingVideoName:Ljava/lang/CharSequence;

.field private final mVoicemailName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f08022f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    const v0, 0x7f080230

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    const v0, 0x7f080231

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    const v0, 0x7f080232

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingVideoName:Ljava/lang/CharSequence;

    const v0, 0x7f080233

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingVideoName:Ljava/lang/CharSequence;

    const v0, 0x7f080234

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedVideoName:Ljava/lang/CharSequence;

    const v0, 0x7f080235

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    const v0, 0x7f09006e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewMissedColor:I

    const v0, 0x7f09006f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewVoicemailColor:I

    return-void
.end method

.method public static isMissedCallType(I)Z
    .locals 2
    .param p0    # I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCallTypeText(IZ)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I
    .param p2    # Z

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingVideoName:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingVideoName:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedVideoName:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
