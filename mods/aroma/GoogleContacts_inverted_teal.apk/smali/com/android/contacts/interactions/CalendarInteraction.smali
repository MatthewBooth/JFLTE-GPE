.class public Lcom/android/contacts/interactions/CalendarInteraction;
.super Ljava/lang/Object;
.source "CalendarInteraction.java"

# interfaces
.implements Lcom/android/contacts/interactions/ContactInteraction;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/interactions/CalendarInteraction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/CalendarInteraction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1    # Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public getAllDay()Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string v2, "allDay"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBodyIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDtend()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string v1, "dtend"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDtstart()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string v1, "dtstart"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getEventId()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string v1, "event_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFooterIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    const v0, 0x7f02002d

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getEventId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionDate()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getDtstart()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewFooter(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p1    # Landroid/content/Context;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getDtend()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getDtstart()Ljava/lang/Long;

    move-result-object v10

    if-nez v10, :cond_0

    if-nez v9, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    if-nez v9, :cond_2

    move-object v9, v10

    :cond_1
    :goto_1
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getAllDay()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_2
    if-nez v10, :cond_1

    move-object v10, v9

    goto :goto_1
.end method

.method public getViewHeader(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
