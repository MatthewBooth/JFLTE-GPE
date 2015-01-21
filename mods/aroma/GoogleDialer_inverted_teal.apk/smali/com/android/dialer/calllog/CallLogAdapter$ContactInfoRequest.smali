.class final Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactInfoRequest"
.end annotation


# instance fields
.field public final callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

.field public final countryIso:Ljava/lang/String;

.field public final number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
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
    instance-of v3, p1, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/ContactInfo;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method
