.class public final Landroid/speech/srec/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/srec/Recognizer$Grammar;
    }
.end annotation


# static fields
.field public static final EVENT_END_OF_VOICING:I = 0x6

.field public static final EVENT_INCOMPLETE:I = 0x2

.field public static final EVENT_INVALID:I = 0x0

.field public static final EVENT_MAX_SPEECH:I = 0xc

.field public static final EVENT_NEED_MORE_AUDIO:I = 0xb

.field public static final EVENT_NO_MATCH:I = 0x1

.field public static final EVENT_RECOGNITION_RESULT:I = 0x8

.field public static final EVENT_RECOGNITION_TIMEOUT:I = 0xa

.field public static final EVENT_SPOKE_TOO_SOON:I = 0x7

.field public static final EVENT_STARTED:I = 0x3

.field public static final EVENT_START_OF_UTTERANCE_TIMEOUT:I = 0x9

.field public static final EVENT_START_OF_VOICING:I = 0x5

.field public static final EVENT_STOPPED:I = 0x4

.field public static final KEY_CONFIDENCE:Ljava/lang/String; = "conf"

.field public static final KEY_LITERAL:Ljava/lang/String; = "literal"

.field public static final KEY_MEANING:Ljava/lang/String; = "meaning"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

.field private mPutAudioBuffer:[B

.field private mRecognizer:J

.field private mVocabulary:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "srec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "Recognizer"

    sput-object v0, Landroid/speech/srec/Recognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    iput-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    iput-object v0, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    iput-object v0, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemInit()V

    invoke-static {p1}, Landroid/speech/srec/Recognizer;->SR_SessionCreate(Ljava/lang/String;)V

    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_RecognizerCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerSetup(J)V

    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_VocabularyLoad()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    return-void
.end method

.method private static native PMemInit()V
.end method

.method private static native PMemShutdown()V
.end method

.method private static native SR_AcousticStateGet(J)Ljava/lang/String;
.end method

.method private static native SR_AcousticStateReset(J)V
.end method

.method private static native SR_AcousticStateSet(JLjava/lang/String;)V
.end method

.method private static native SR_GrammarAddWordToSlot(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native SR_GrammarAllowAll(J)V
.end method

.method private static native SR_GrammarAllowOnly(JLjava/lang/String;)V
.end method

.method private static native SR_GrammarCompile(J)V
.end method

.method private static native SR_GrammarCreate()J
.end method

.method private static native SR_GrammarDestroy(J)V
.end method

.method private static native SR_GrammarLoad(Ljava/lang/String;)J
.end method

.method private static native SR_GrammarResetAllSlots(J)V
.end method

.method private static native SR_GrammarSave(JLjava/lang/String;)V
.end method

.method private static native SR_GrammarSetupRecognizer(JJ)V
.end method

.method private static native SR_GrammarSetupVocabulary(JJ)V
.end method

.method private static native SR_GrammarUnsetupRecognizer(J)V
.end method

.method private static native SR_RecognizerActivateRule(JJLjava/lang/String;I)V
.end method

.method private static native SR_RecognizerAdvance(J)I
.end method

.method private static native SR_RecognizerCheckGrammarConsistency(JJ)Z
.end method

.method private static native SR_RecognizerCreate()J
.end method

.method private static native SR_RecognizerDeactivateAllRules(J)V
.end method

.method private static native SR_RecognizerDeactivateRule(JJLjava/lang/String;)V
.end method

.method private static native SR_RecognizerDestroy(J)V
.end method

.method private static native SR_RecognizerGetBoolParameter(JLjava/lang/String;)Z
.end method

.method private static native SR_RecognizerGetParameter(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_RecognizerGetSize_tParameter(JLjava/lang/String;)I
.end method

.method private static native SR_RecognizerHasSetupRules(J)Z
.end method

.method private static native SR_RecognizerIsActiveRule(JJLjava/lang/String;)Z
.end method

.method private static native SR_RecognizerIsSetup(J)Z
.end method

.method private static native SR_RecognizerIsSignalClipping(J)Z
.end method

.method private static native SR_RecognizerIsSignalDCOffset(J)Z
.end method

.method private static native SR_RecognizerIsSignalNoisy(J)Z
.end method

.method private static native SR_RecognizerIsSignalTooFewSamples(J)Z
.end method

.method private static native SR_RecognizerIsSignalTooManySamples(J)Z
.end method

.method private static native SR_RecognizerIsSignalTooQuiet(J)Z
.end method

.method private static native SR_RecognizerPutAudio(J[BIIZ)I
.end method

.method private static native SR_RecognizerResultGetKeyCount(JI)I
.end method

.method private static native SR_RecognizerResultGetKeyList(JI)[Ljava/lang/String;
.end method

.method private static native SR_RecognizerResultGetSize(J)I
.end method

.method private static native SR_RecognizerResultGetValue(JILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_RecognizerResultGetWaveform(J)[B
.end method

.method private static native SR_RecognizerSetBoolParameter(JLjava/lang/String;Z)V
.end method

.method private static native SR_RecognizerSetParameter(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native SR_RecognizerSetSize_tParameter(JLjava/lang/String;I)V
.end method

.method private static native SR_RecognizerSetup(J)V
.end method

.method private static native SR_RecognizerSetupRule(JJLjava/lang/String;)V
.end method

.method private static native SR_RecognizerStart(J)V
.end method

.method private static native SR_RecognizerStop(J)V
.end method

.method private static native SR_RecognizerUnsetup(J)V
.end method

.method private static native SR_SessionCreate(Ljava/lang/String;)V
.end method

.method private static native SR_SessionDestroy()V
.end method

.method private static native SR_VocabularyDestroy(J)V
.end method

.method private static native SR_VocabularyGetPronunciation(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_VocabularyLoad()J
.end method

.method static synthetic access$000(Ljava/lang/String;)J
    .locals 2
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/speech/srec/Recognizer;->SR_GrammarLoad(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/speech/srec/Recognizer;)J
    .locals 2
    .param p0    # Landroid/speech/srec/Recognizer;

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    return-wide v0
.end method

.method static synthetic access$1000(J)V
    .locals 0
    .param p0    # J

    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarDestroy(J)V

    return-void
.end method

.method static synthetic access$200(JJ)V
    .locals 0
    .param p0    # J
    .param p2    # J

    invoke-static {p0, p1, p2, p3}, Landroid/speech/srec/Recognizer;->SR_GrammarSetupVocabulary(JJ)V

    return-void
.end method

.method static synthetic access$300(J)V
    .locals 0
    .param p0    # J

    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarResetAllSlots(J)V

    return-void
.end method

.method static synthetic access$400(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0    # J
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # Ljava/lang/String;

    invoke-static/range {p0 .. p6}, Landroid/speech/srec/Recognizer;->SR_GrammarAddWordToSlot(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(J)V
    .locals 0
    .param p0    # J

    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarCompile(J)V

    return-void
.end method

.method static synthetic access$600(Landroid/speech/srec/Recognizer;)J
    .locals 2
    .param p0    # Landroid/speech/srec/Recognizer;

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    return-wide v0
.end method

.method static synthetic access$700(JJ)V
    .locals 0
    .param p0    # J
    .param p2    # J

    invoke-static {p0, p1, p2, p3}, Landroid/speech/srec/Recognizer;->SR_GrammarSetupRecognizer(JJ)V

    return-void
.end method

.method static synthetic access$802(Landroid/speech/srec/Recognizer;Landroid/speech/srec/Recognizer$Grammar;)Landroid/speech/srec/Recognizer$Grammar;
    .locals 0
    .param p0    # Landroid/speech/srec/Recognizer;
    .param p1    # Landroid/speech/srec/Recognizer$Grammar;

    iput-object p1, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    return-object p1
.end method

.method static synthetic access$900(JLjava/lang/String;)V
    .locals 0
    .param p0    # J
    .param p2    # Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/speech/srec/Recognizer;->SR_GrammarSave(JLjava/lang/String;)V

    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .locals 2
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "EVENT_INVALID"

    goto :goto_0

    :pswitch_1
    const-string v0, "EVENT_NO_MATCH"

    goto :goto_0

    :pswitch_2
    const-string v0, "EVENT_INCOMPLETE"

    goto :goto_0

    :pswitch_3
    const-string v0, "EVENT_STARTED"

    goto :goto_0

    :pswitch_4
    const-string v0, "EVENT_STOPPED"

    goto :goto_0

    :pswitch_5
    const-string v0, "EVENT_START_OF_VOICING"

    goto :goto_0

    :pswitch_6
    const-string v0, "EVENT_END_OF_VOICING"

    goto :goto_0

    :pswitch_7
    const-string v0, "EVENT_SPOKE_TOO_SOON"

    goto :goto_0

    :pswitch_8
    const-string v0, "EVENT_RECOGNITION_RESULT"

    goto :goto_0

    :pswitch_9
    const-string v0, "EVENT_START_OF_UTTERANCE_TIMEOUT"

    goto :goto_0

    :pswitch_a
    const-string v0, "EVENT_RECOGNITION_TIMEOUT"

    goto :goto_0

    :pswitch_b
    const-string v0, "EVENT_NEED_MORE_AUDIO"

    goto :goto_0

    :pswitch_c
    const-string v0, "EVENT_MAX_SPEECH"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getConfigDir(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/util/Locale;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/usr/srec/config/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public advance()I
    .locals 2

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerAdvance(J)I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 6

    const-wide/16 v4, 0x0

    :try_start_0
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_VocabularyDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :cond_0
    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    :try_start_1
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerUnsetup(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_1
    :try_start_2
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    :try_start_3
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_1
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    :try_start_4
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v2, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_3
    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    :try_start_6
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_4
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_5
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    :try_start_7
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_6
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_7
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    :try_start_8
    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v2, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerUnsetup(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    :cond_4
    :try_start_9
    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v2, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :cond_5
    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    :try_start_a
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_8
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_9
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    :try_start_b
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_a
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_b
    move-exception v0

    :try_start_c
    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v2, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    :cond_6
    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    :try_start_d
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_c
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_d
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    :try_start_e
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_e
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/speech/srec/Recognizer;->destroy()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to destroy Recognizer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public getAcousticState()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_AcousticStateGet(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1, p1, p2}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetValue(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultCount()I
    .locals 2

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetSize(J)I

    move-result v0

    return v0
.end method

.method public getResultKeys(I)[Ljava/lang/String;
    .locals 2
    .param p1    # I

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1, p1}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetKeyList(JI)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putAudio([BIIZ)I
    .locals 6
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(J[BIIZ)I

    move-result v0

    return v0
.end method

.method public putAudio(Ljava/io/InputStream;)V
    .locals 6
    .param p1    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    if-nez v0, :cond_0

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    :cond_0
    iget-object v0, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_2

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    const/4 v5, 0x1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(J[BIIZ)I

    :cond_1
    return-void

    :cond_2
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(J[BIIZ)I

    move-result v0

    if-eq v4, v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SR_RecognizerPutAudio failed nbytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetAcousticState()V
    .locals 2

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_AcousticStateReset(J)V

    return-void
.end method

.method public setAcousticState(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1, p1}, Landroid/speech/srec/Recognizer;->SR_AcousticStateSet(JLjava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 6

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    # getter for: Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J
    invoke-static {v2}, Landroid/speech/srec/Recognizer$Grammar;->access$1100(Landroid/speech/srec/Recognizer$Grammar;)J

    move-result-wide v2

    const-string/jumbo v4, "trash"

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/Recognizer;->SR_RecognizerActivateRule(JJLjava/lang/String;I)V

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerStart(J)V

    return-void
.end method

.method public stop()V
    .locals 5

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerStop(J)V

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    # getter for: Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J
    invoke-static {v2}, Landroid/speech/srec/Recognizer$Grammar;->access$1100(Landroid/speech/srec/Recognizer$Grammar;)J

    move-result-wide v2

    const-string/jumbo v4, "trash"

    invoke-static {v0, v1, v2, v3, v4}, Landroid/speech/srec/Recognizer;->SR_RecognizerDeactivateRule(JJLjava/lang/String;)V

    return-void
.end method
