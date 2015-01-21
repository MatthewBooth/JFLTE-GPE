.class public Lcom/android/contacts/interactions/ContactInteractionUtil;
.super Ljava/lang/Object;
.source "ContactInteractionUtil.java"


# direct methods
.method private static compareCalendarDayYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0    # Ljava/util/Calendar;
    .param p1    # Ljava/util/Calendar;

    const/4 v3, 0x6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatDateStringFromTimestamp(JLandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # J
    .param p2    # Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/interactions/ContactInteractionUtil;->formatDateStringFromTimestamp(JLandroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateStringFromTimestamp(JLandroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .param p0    # J
    .param p2    # Landroid/content/Context;
    .param p3    # Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v0, p3}, Lcom/android/contacts/interactions/ContactInteractionUtil;->compareCalendarDayYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p3, v2, v1}, Ljava/util/Calendar;->add(II)V

    invoke-static {v0, p3}, Lcom/android/contacts/interactions/ContactInteractionUtil;->compareCalendarDayYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b01d1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p3, v2, v1}, Ljava/util/Calendar;->add(II)V

    invoke-static {v0, p3}, Lcom/android/contacts/interactions/ContactInteractionUtil;->compareCalendarDayYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0b01d2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v1, 0x18

    invoke-static {p2, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static questionMarks(I)Ljava/lang/String;
    .locals 3
    .param p0    # I

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    if-ge v0, p0, :cond_1

    const-string v2, ",?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
