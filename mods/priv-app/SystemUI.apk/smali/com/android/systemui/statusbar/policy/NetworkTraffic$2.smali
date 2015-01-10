.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;
.super Landroid/os/Handler;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private formatOutput(JJLjava/lang/String;)Ljava/lang/String;
    .locals 6

    long-to-float v2, p3

    long-to-float v3, p1

    const/high16 v4, 0x447a0000

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-long v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1700()Ljava/text/DecimalFormat;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1700()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1700()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1700()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v25

    sub-long v3, v8, v25

    long-to-double v8, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getInterval()I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v25, v0

    const-wide v27, 0x3fee666666666666L

    mul-double v25, v25, v27

    cmpg-double v2, v8, v25

    if-gez v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x1

    if-eq v2, v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v8, 0x1

    cmp-long v2, v3, v8

    if-gez v2, :cond_1

    const-wide v3, 0x7fffffffffffffffL

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J
    invoke-static {v2, v8, v9}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$102(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v17

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v8

    sub-long v11, v17, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v8

    sub-long v5, v19, v8

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v25

    sub-long v15, v8, v25

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v25

    sub-long v21, v8, v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    const/16 v8, 0x400

    if-ne v2, v8, :cond_4

    const-string v7, "B/s"

    :goto_1
    const-string v23, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    const/4 v8, 0x1

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z
    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$700(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "#%06X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const v10, 0xffffff

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mColorUp:I
    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v13

    and-int/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<font color=\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\'>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTextEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, " U"

    :goto_2
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "</font>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    const/4 v8, 0x3

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z
    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$700(II)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "<br />"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeMulti:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v24

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    const/4 v8, 0x2

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z
    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$700(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "#%06X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const v10, 0xffffff

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mColorDown:I
    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v13

    and-int/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "<font color=\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\'>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v8, p0

    move-wide v9, v3

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTextEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, " D"

    :goto_4
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "</font>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    invoke-virtual {v2, v8, v9}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mHideInactivity:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    move-wide/from16 v0, v17

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J
    invoke-static {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$302(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    move-wide/from16 v0, v19

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J
    invoke-static {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$402(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Ljava/lang/Runnable;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getInterval()I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v2, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    const-string v7, "b/s"

    const-wide/16 v8, 0x8

    mul-long/2addr v11, v8

    const-wide/16 v8, 0x8

    mul-long/2addr v5, v8

    goto/16 :goto_1

    :cond_5
    const-string v2, ""

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeSingle:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v24

    goto/16 :goto_3

    :cond_7
    const-string v2, ""

    goto/16 :goto_4

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    goto :goto_5

    :pswitch_1
    const-wide/16 v8, 0x0

    cmp-long v2, v21, v8

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static/range {v23 .. v23}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_2
    const-wide/16 v8, 0x0

    cmp-long v2, v15, v8

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static/range {v23 .. v23}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :pswitch_3
    const-wide/16 v8, 0x0

    cmp-long v2, v15, v8

    if-nez v2, :cond_a

    const-wide/16 v8, 0x0

    cmp-long v2, v21, v8

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static/range {v23 .. v23}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static/range {v23 .. v23}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
