.class Landroid/speech/tts/EventLoggerV1;
.super Landroid/speech/tts/AbstractEventLogger;
.source "EventLoggerV1.java"


# instance fields
.field private final mRequest:Landroid/speech/tts/SynthesisRequest;


# direct methods
.method constructor <init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V
    .locals 0
    .param p1    # Landroid/speech/tts/SynthesisRequest;
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Landroid/speech/tts/AbstractEventLogger;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    return-void
.end method

.method private getLocaleString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2d

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUtteranceLength()I
    .locals 2

    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected logFailure(I)V
    .locals 7
    .param p1    # I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/EventLoggerV1;->mServiceApp:Ljava/lang/String;

    iget v1, p0, Landroid/speech/tts/EventLoggerV1;->mCallerUid:I

    iget v2, p0, Landroid/speech/tts/EventLoggerV1;->mCallerPid:I

    invoke-direct {p0}, Landroid/speech/tts/EventLoggerV1;->getUtteranceLength()I

    move-result v3

    invoke-direct {p0}, Landroid/speech/tts/EventLoggerV1;->getLocaleString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v5}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v5

    iget-object v6, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v6}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakFailure(Ljava/lang/String;IIILjava/lang/String;II)V

    :cond_0
    return-void
.end method

.method protected logSuccess(JJJ)V
    .locals 15
    .param p1    # J
    .param p3    # J
    .param p5    # J

    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mServiceApp:Ljava/lang/String;

    iget v2, p0, Landroid/speech/tts/EventLoggerV1;->mCallerUid:I

    iget v3, p0, Landroid/speech/tts/EventLoggerV1;->mCallerPid:I

    invoke-direct {p0}, Landroid/speech/tts/EventLoggerV1;->getUtteranceLength()I

    move-result v4

    invoke-direct {p0}, Landroid/speech/tts/EventLoggerV1;->getLocaleString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v6

    iget-object v0, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p1

    invoke-static/range {v1 .. v13}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakSuccess(Ljava/lang/String;IIILjava/lang/String;IIJJJ)V

    return-void
.end method
