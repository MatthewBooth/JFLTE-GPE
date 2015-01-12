.class final enum Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;
.super Ljava/lang/Enum;
.source "VoicemailStatusHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OverallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum INVALID:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum INVITE_FOR_CONFIGURATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum MESSAGE_WAITING:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NOT_CONFIGURED:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_CONNECTION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_DATA:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_DETAILED_NOTIFICATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_NOTIFICATIONS:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum OK:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;


# instance fields
.field private final mAction:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

.field private final mCallDetailsMessageId:I

.field private final mCallLogMessageId:I

.field private final mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, -0x1

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v1, "NO_CONNECTION"

    sget-object v4, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const v5, 0x7f080204

    const v6, 0x7f080207

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;II)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_CONNECTION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "NO_DATA"

    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const v8, 0x7f080204

    const v9, 0x7f080207

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;II)V

    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DATA:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "MESSAGE_WAITING"

    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const v8, 0x7f080205

    const v9, 0x7f080207

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v9}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;II)V

    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->MESSAGE_WAITING:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "NO_NOTIFICATIONS"

    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const v8, 0x7f080204

    move v5, v13

    move v6, v13

    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_NOTIFICATIONS:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "INVITE_FOR_CONFIGURATION"

    const/4 v5, 0x4

    const/4 v6, 0x4

    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CONFIGURE_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const v8, 0x7f080206

    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "NO_DETAILED_NOTIFICATION"

    const/4 v5, 0x5

    const/4 v6, 0x5

    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "NOT_CONFIGURED"

    const/4 v5, 0x6

    const/4 v6, 0x6

    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NOT_CONFIGURED:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "OK"

    const/4 v5, 0x7

    const/4 v6, 0x7

    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->OK:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "INVALID"

    const/16 v5, 0x8

    const/16 v6, 0x8

    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVALID:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_CONNECTION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DATA:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->MESSAGE_WAITING:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_NOTIFICATIONS:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v13

    const/4 v1, 0x4

    sget-object v2, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NOT_CONFIGURED:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->OK:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVALID:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->$VALUES:[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V
    .locals 7
    .param p3    # I
    .param p4    # Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;
    .param p5    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;",
            "I)V"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;II)V
    .locals 0
    .param p3    # I
    .param p4    # Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;
    .param p5    # I
    .param p6    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mPriority:I

    iput-object p4, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mAction:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    iput p5, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mCallLogMessageId:I

    iput p6, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mCallDetailsMessageId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0
.end method

.method public static values()[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;
    .locals 1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->$VALUES:[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    invoke-virtual {v0}, [Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mAction:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    return-object v0
.end method

.method public getCallDetailsMessageId()I
    .locals 1

    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mCallDetailsMessageId:I

    return v0
.end method

.method public getCallLogMessageId()I
    .locals 1

    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mCallLogMessageId:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mPriority:I

    return v0
.end method
