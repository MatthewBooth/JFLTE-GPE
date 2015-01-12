.class public Lcom/android/dialer/calllog/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# static fields
.field public static EMPTY:Lcom/android/dialer/calllog/ContactInfo;

.field public static GEOCODE_AS_LABEL:Ljava/lang/String;


# instance fields
.field public formattedNumber:Ljava/lang/String;

.field public isBadData:Z

.field public label:Ljava/lang/String;

.field public lookupKey:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public normalizedNumber:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public objectId:Ljava/lang/String;

.field public photoId:J

.field public photoUri:Landroid/net/Uri;

.field public sourceType:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    sput-object v0, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    const-string v0, ""

    sput-object v0, Lcom/android/dialer/calllog/ContactInfo;->GEOCODE_AS_LABEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/calllog/ContactInfo;

    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v4, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_0

    :cond_a
    iget-wide v4, p0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    iget-wide v6, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    goto :goto_0

    :cond_c
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 5

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "lookupUri"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "type"

    iget v2, p0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "label"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "number"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "formattedNumber"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "normalizedNumber"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "photoId"

    iget-wide v2, p0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "photoUri"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "objectId"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
