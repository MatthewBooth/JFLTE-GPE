.class public final enum Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;
.super Ljava/lang/Enum;
.source "VoicemailStatusHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

.field public static final enum CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

.field public static final enum CONFIGURE_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

.field public static final enum NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;


# instance fields
.field private final mMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const-string v1, "CALL_VOICEMAIL"

    const v2, 0x7f080209

    invoke-direct {v0, v1, v4, v2}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const-string v1, "CONFIGURE_VOICEMAIL"

    const v2, 0x7f080208

    invoke-direct {v0, v1, v5, v2}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CONFIGURE_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CONFIGURE_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->$VALUES:[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->mMessageId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    return-object v0
.end method

.method public static values()[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;
    .locals 1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->$VALUES:[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    invoke-virtual {v0}, [Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    return-object v0
.end method


# virtual methods
.method public getMessageId()I
    .locals 1

    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->mMessageId:I

    return v0
.end method
