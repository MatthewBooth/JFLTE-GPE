.class Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/model/account/BaseAccountType$1;

    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 4
    .param p1    # Landroid/util/AttributeSet;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "yearOptional"

    # invokes: Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {p1, v1, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "birthday"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "anniversary"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "other"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "custom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "event"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/contact_event"

    const-string v6, "data2"

    const v7, 0x7f0800af

    const/16 v8, 0x96

    new-instance v9, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;

    invoke-direct {v9}, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;-><init>()V

    new-instance v10, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string v0, "data1"

    invoke-direct {v10, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v11

    iget-object v0, v11, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0800af

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "dateWithTime"

    const/4 v1, 0x0

    # invokes: Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {p3, v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/common/util/CommonDateUtils;->NO_YEAR_DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v11, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/android/contacts/common/util/CommonDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v11, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/contacts/common/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v11, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/android/contacts/common/util/CommonDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v11, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    goto :goto_0
.end method
