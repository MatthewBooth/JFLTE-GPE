.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private formatOutput(JJLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # J
    .param p3    # J
    .param p5    # Ljava/lang/String;

    long-to-float v2, p3

    long-to-float v3, p1

    const/high16 v4, 0x447a0000

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-long v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1300()Ljava/text/DecimalFormat;

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
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1300()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

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
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1300()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->MB:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

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
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1300()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->GB:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

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

.method private shouldHide(JJJ)Z
    .locals 13
    .param p1    # J
    .param p3    # J
    .param p5    # J

    move-wide/from16 v0, p3

    long-to-float v3, v0

    move-wide/from16 v0, p5

    long-to-float v8, v0

    const/high16 v9, 0x447a0000

    div-float/2addr v8, v9

    div-float/2addr v3, v8

    float-to-long v8, v3

    const-wide/16 v10, 0x400

    div-long v6, v8, v10

    long-to-float v3, p1

    move-wide/from16 v0, p5

    long-to-float v8, v0

    const/high16 v9, 0x447a0000

    div-float/2addr v8, v9

    div-float/2addr v3, v8

    float-to-long v8, v3

    const-wide/16 v10, 0x400

    div-long v4, v8, v10

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHide:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v4, v8

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1    # Landroid/os/Message;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v14

    sub-long v8, v12, v14

    long-to-double v12, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v3

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getInterval(I)I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$200(I)I

    move-result v3

    int-to-double v14, v3

    const-wide v22, 0x3fee666666666666L

    mul-double v14, v14, v22

    cmpg-double v3, v12, v14

    if-gez v3, :cond_1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v11, 0x1

    if-eq v3, v11, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v12, 0x1

    cmp-long v3, v8, v12

    if-gez v3, :cond_1

    const-wide v8, 0x7fffffffffffffffL

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J
    invoke-static {v3, v12, v13}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$002(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v18

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v12

    sub-long v4, v18, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v12

    sub-long v6, v20, v12

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->shouldHide(JJJ)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const-string v11, ""

    invoke-virtual {v3, v11}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    move-wide/from16 v0, v18

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J
    invoke-static {v3, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$302(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    move-wide/from16 v0, v20

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J
    invoke-static {v3, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$402(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Ljava/lang/Runnable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I
    invoke-static {v12}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v12

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getInterval(I)I
    invoke-static {v12}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$200(I)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v3, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->KB:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v3

    const/16 v11, 0x400

    if-ne v3, v11, :cond_6

    const-string v16, "B/s"

    :goto_2
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v3

    const/4 v11, 0x1

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z
    invoke-static {v3, v11}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(II)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v11, p0

    move-wide v12, v8

    move-wide v14, v6

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShowText:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, " U"

    :goto_3
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v3

    const/4 v11, 0x3

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z
    invoke-static {v3, v11}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(II)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeMulti:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v10

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mState:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v3

    const/4 v11, 0x2

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isSet(II)Z
    invoke-static {v3, v11}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(II)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v11, p0

    move-wide v12, v8

    move-wide v14, v4

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mShowText:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, " D"

    :goto_5
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 v11, 0x0

    int-to-float v12, v10

    invoke-virtual {v3, v11, v12}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    const-string v16, "b/s"

    const-wide/16 v12, 0x8

    mul-long/2addr v4, v12

    const-wide/16 v12, 0x8

    mul-long/2addr v6, v12

    goto/16 :goto_2

    :cond_7
    const-string v3, ""

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->txtSizeSingle:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v10

    goto/16 :goto_4

    :cond_9
    const-string v3, ""

    goto :goto_5
.end method
