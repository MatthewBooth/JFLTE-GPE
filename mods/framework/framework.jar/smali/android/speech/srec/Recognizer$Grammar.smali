.class public Landroid/speech/srec/Recognizer$Grammar;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/srec/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Grammar"
.end annotation


# instance fields
.field private mGrammar:J

.field final synthetic this$0:Landroid/speech/srec/Recognizer;


# direct methods
.method public constructor <init>(Landroid/speech/srec/Recognizer;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Landroid/speech/srec/Recognizer$Grammar;->this$0:Landroid/speech/srec/Recognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarLoad(Ljava/lang/String;)J
    invoke-static {p2}, Landroid/speech/srec/Recognizer;->access$000(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    iget-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    # getter for: Landroid/speech/srec/Recognizer;->mVocabulary:J
    invoke-static {p1}, Landroid/speech/srec/Recognizer;->access$100(Landroid/speech/srec/Recognizer;)J

    move-result-wide v2

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarSetupVocabulary(JJ)V
    invoke-static {v0, v1, v2, v3}, Landroid/speech/srec/Recognizer;->access$200(JJ)V

    return-void
.end method

.method static synthetic access$1100(Landroid/speech/srec/Recognizer$Grammar;)J
    .locals 2
    .param p0    # Landroid/speech/srec/Recognizer$Grammar;

    iget-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    return-wide v0
.end method


# virtual methods
.method public addWordToSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Ljava/lang/String;

    iget-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarAddWordToSlot(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Landroid/speech/srec/Recognizer;->access$400(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public compile()V
    .locals 2

    iget-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarCompile(J)V
    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->access$500(J)V

    return-void
.end method

.method public destroy()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarDestroy(J)V
    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->access$1000(J)V

    iput-wide v2, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 4

    iget-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/speech/srec/Recognizer$Grammar;->destroy()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to destroy Grammar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public resetAllSlots()V
    .locals 2

    iget-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarResetAllSlots(J)V
    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->access$300(J)V

    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarSave(JLjava/lang/String;)V
    invoke-static {v0, v1, p1}, Landroid/speech/srec/Recognizer;->access$900(JLjava/lang/String;)V

    return-void
.end method

.method public setupRecognizer()V
    .locals 4

    iget-wide v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J

    iget-object v2, p0, Landroid/speech/srec/Recognizer$Grammar;->this$0:Landroid/speech/srec/Recognizer;

    # getter for: Landroid/speech/srec/Recognizer;->mRecognizer:J
    invoke-static {v2}, Landroid/speech/srec/Recognizer;->access$600(Landroid/speech/srec/Recognizer;)J

    move-result-wide v2

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarSetupRecognizer(JJ)V
    invoke-static {v0, v1, v2, v3}, Landroid/speech/srec/Recognizer;->access$700(JJ)V

    iget-object v0, p0, Landroid/speech/srec/Recognizer$Grammar;->this$0:Landroid/speech/srec/Recognizer;

    # setter for: Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;
    invoke-static {v0, p0}, Landroid/speech/srec/Recognizer;->access$802(Landroid/speech/srec/Recognizer;Landroid/speech/srec/Recognizer$Grammar;)Landroid/speech/srec/Recognizer$Grammar;

    return-void
.end method
