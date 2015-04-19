.class public Lcom/android/contacts/interactions/CalendarInteractionUtils;
.super Ljava/lang/Object;
.source "CalendarInteractionUtils.java"


# direct methods
.method private static convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 3
    .param p0    # Landroid/text/format/Time;
    .param p1    # J
    .param p3    # Ljava/lang/String;

    if-nez p0, :cond_0

    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 13
    .param p0    # Landroid/content/Context;
    .param p1    # J
    .param p3    # J
    .param p5    # I

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_0

    const-string v9, "UTC"

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v3, v11, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v2, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    :cond_0
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public static getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 32
    .param p0    # J
    .param p2    # J
    .param p4    # J
    .param p6    # Ljava/lang/String;
    .param p7    # Z
    .param p8    # Landroid/content/Context;

    const/16 v27, 0x12

    const/16 v16, 0x1

    invoke-static/range {p8 .. p8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    :cond_0
    new-instance v24, Landroid/text/format/Time;

    move-object/from16 v0, v24

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const/16 v26, 0x0

    if-eqz p7, :cond_4

    const/4 v8, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v2, p6

    invoke-static {v8, v0, v1, v2}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v4

    const/4 v8, 0x0

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-static {v8, v0, v1, v2}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v24

    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static/range {v4 .. v9}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->singleDayEvent(JJJ)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v0, v24

    iget-wide v14, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v10, v4

    move-wide/from16 v12, p4

    invoke-static/range {v9 .. v15}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v30

    const/4 v8, 0x1

    move/from16 v0, v30

    if-ne v8, v0, :cond_3

    const v8, 0x7f0b01d3

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    :cond_1
    :goto_0
    if-nez v26, :cond_2

    new-instance v9, Ljava/util/Formatter;

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x32

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const-string v15, "UTC"

    move-object/from16 v8, p8

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    move/from16 v14, v27

    invoke-static/range {v8 .. v15}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v26

    :cond_2
    :goto_1
    return-object v26

    :cond_3
    const/4 v8, 0x2

    move/from16 v0, v30

    if-ne v8, v0, :cond_1

    const v8, 0x7f0b01d2

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_0

    :cond_4
    move-object/from16 v0, v24

    iget-wide v14, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->singleDayEvent(JJJ)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object/from16 v11, p8

    move-wide/from16 v12, p0

    move-wide/from16 v14, p2

    invoke-static/range {v11 .. v16}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v22, v0

    move-wide/from16 v18, p0

    move-wide/from16 v20, p4

    invoke-static/range {v17 .. v23}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v30

    const/4 v8, 0x1

    move/from16 v0, v30

    if-ne v8, v0, :cond_5

    const v8, 0x7f0b01d4

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v29, v10, v11

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto :goto_1

    :cond_5
    const/4 v8, 0x2

    move/from16 v0, v30

    if-ne v8, v0, :cond_6

    const v8, 0x7f0b01d5

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v29, v10, v11

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto :goto_1

    :cond_6
    move-object/from16 v17, p8

    move-wide/from16 v18, p0

    move-wide/from16 v20, p2

    move/from16 v22, v27

    invoke-static/range {v17 .. v22}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v25

    const v8, 0x7f0b01d6

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v25, v10, v11

    const/4 v11, 0x1

    aput-object v29, v10, v11

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1

    :cond_7
    or-int v8, v27, v16

    const/high16 v10, 0x10000

    or-int/2addr v8, v10

    const v10, 0x8000

    or-int v22, v8, v10

    move-object/from16 v17, p8

    move-wide/from16 v18, p0

    move-wide/from16 v20, p2

    invoke-static/range {v17 .. v22}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1
.end method

.method private static isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I
    .locals 5
    .param p0    # Landroid/content/res/Resources;
    .param p1    # J
    .param p3    # J
    .param p5    # J

    const/4 v3, 0x1

    invoke-static {p1, p2, p5, p6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-static {p3, p4, p5, p6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    sub-int v1, v2, v0

    if-ne v1, v3, :cond_1

    const/4 v3, 0x2

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static singleDayEvent(JJJ)Z
    .locals 6
    .param p0    # J
    .param p2    # J
    .param p4    # J

    const/4 v2, 0x1

    cmp-long v3, p0, p2

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0, p1, p4, p5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    const-wide/16 v4, 0x1

    sub-long v4, p2, v4

    invoke-static {v4, v5, p4, p5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method
