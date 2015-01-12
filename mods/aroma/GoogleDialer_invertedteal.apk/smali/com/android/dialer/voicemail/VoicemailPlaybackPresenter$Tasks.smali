.class public final enum Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;
.super Ljava/lang/Enum;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

.field public static final enum CHECK_CONTENT_AFTER_CHANGE:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

.field public static final enum CHECK_FOR_CONTENT:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

.field public static final enum PREPARE_MEDIA_PLAYER:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

.field public static final enum RESET_PREPARE_START_MEDIA_PLAYER:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    const-string v1, "CHECK_FOR_CONTENT"

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    const-string v1, "CHECK_CONTENT_AFTER_CHANGE"

    invoke-direct {v0, v1, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    const-string v1, "PREPARE_MEDIA_PLAYER"

    invoke-direct {v0, v1, v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    const-string v1, "RESET_PREPARE_START_MEDIA_PLAYER"

    invoke-direct {v0, v1, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->RESET_PREPARE_START_MEDIA_PLAYER:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->RESET_PREPARE_START_MEDIA_PLAYER:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->$VALUES:[Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;
    .locals 1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->$VALUES:[Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    invoke-virtual {v0}, [Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    return-object v0
.end method
