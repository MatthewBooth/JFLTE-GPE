.class public Lcom/android/systemui/qs/tiles/DataUsageDetailView;
.super Landroid/widget/LinearLayout;
.source "DataUsageDetailView.java"


# instance fields
.field private final FORMAT:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method private formatBytes(J)Ljava/lang/String;
    .locals 11
    .param p1    # J

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-double v6, v0

    const-wide/high16 v8, 0x4199000000000000L

    cmpl-double v3, v6, v8

    if-lez v3, :cond_0

    long-to-double v6, v0

    const-wide/high16 v8, 0x41d0000000000000L

    div-double v4, v6, v8

    const-string v2, "GB"

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-gez v3, :cond_2

    const/4 v3, -0x1

    :goto_1
    int-to-double v8, v3

    mul-double/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    long-to-double v6, v0

    const-wide/high16 v8, 0x40f9000000000000L

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1

    long-to-double v6, v0

    const-wide/high16 v8, 0x4130000000000000L

    div-double v4, v6, v8

    const-string v2, "MB"

    goto :goto_0

    :cond_1
    long-to-double v6, v0

    const-wide/high16 v8, 0x4090000000000000L

    div-double v4, v6, v8

    const-string v2, "KB"

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;)V
    .locals 22
    .param p1    # Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v21, 0x7f07000c

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->warningLevel:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->limitLevel:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    :cond_0
    const v18, 0x7f0b0106

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->usageLevel:J

    const v4, 0x7f0b010b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->warningLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    :goto_0
    const v4, 0x1020016

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0e002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f0e0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/DataUsageGraph;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->warningLevel:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->usageLevel:J

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/qs/DataUsageGraph;->setLevels(JJJ)V

    const v4, 0x7f0e0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->carrier:Ljava/lang/String;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0e0033

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0e0032

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v19, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0e0034

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->limitLevel:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    const v18, 0x7f0b0107

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->usageLevel:J

    sub-long v10, v4, v6

    const v4, 0x7f0b0109

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const v4, 0x7f0b010a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_2
    const v18, 0x7f0b0108

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->limitLevel:J

    sub-long v10, v4, v6

    const v4, 0x7f0b0109

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const v4, 0x7f0b010a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v21, 0x7f07000d

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x8

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0x8

    goto/16 :goto_2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    const v2, 0x7f0c004b

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x1020016

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v0, 0x7f0e002f

    const v1, 0x7f0c004c

    invoke-static {p0, v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v0, 0x7f0e0031

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v0, 0x7f0e0032

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v0, 0x7f0e0033

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v0, 0x7f0e0034

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    return-void
.end method
