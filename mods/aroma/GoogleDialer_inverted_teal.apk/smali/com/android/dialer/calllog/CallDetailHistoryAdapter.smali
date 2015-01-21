.class public Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# instance fields
.field private final mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

.field private final mContext:Landroid/content/Context;

.field private mDurationItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/dialer/calllog/CallTypeHelper;[Lcom/android/dialer/PhoneCallDetails;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/LayoutInflater;
    .param p3    # Lcom/android/dialer/calllog/CallTypeHelper;
    .param p4    # [Lcom/android/dialer/PhoneCallDetails;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDurationItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    iput-object p4, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    return-void
.end method

.method private formatDuration(J)Ljava/lang/CharSequence;
    .locals 9
    .param p1    # J

    const-wide/16 v6, 0x3c

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v6

    if-ltz v4, :cond_0

    div-long v0, p1, v6

    mul-long v4, v0, v6

    sub-long/2addr p1, v4

    :cond_0
    move-wide v2, p1

    iget-object v4, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f080243

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private formatDurationAndDataUsage(JLjava/lang/Long;)Ljava/lang/CharSequence;
    .locals 7
    .param p1    # J
    .param p3    # Ljava/lang/Long;

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDurationItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDurationItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDurationItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mDurationItems:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/dialer/util/DialerUtils;->join(Landroid/content/res/Resources;Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1    # I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040008

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    :goto_0
    return-object v15

    :cond_0
    move-object/from16 v15, p2

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040009

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    add-int/lit8 v4, p1, -0x1

    aget-object v13, v3, v4

    const v3, 0x7f0e0067

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/dialer/calllog/CallTypeIconsView;

    const v3, 0x7f0e0068

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v3, 0x7f0e0069

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v3, 0x7f0e006a

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iget-object v3, v13, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    const/4 v4, 0x0

    aget v2, v3, v4

    iget v3, v13, Lcom/android/dialer/PhoneCallDetails;->features:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v16, 0x1

    :goto_2
    invoke-virtual {v9}, Lcom/android/dialer/calllog/CallTypeIconsView;->clear()V

    invoke-virtual {v9, v2}, Lcom/android/dialer/calllog/CallTypeIconsView;->add(I)V

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/dialer/calllog/CallTypeIconsView;->setShowVideo(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Lcom/android/dialer/calllog/CallTypeHelper;->getCallTypeText(IZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, v13, Lcom/android/dialer/PhoneCallDetails;->date:J

    iget-wide v6, v13, Lcom/android/dialer/PhoneCallDetails;->date:J

    const/16 v8, 0x17

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x4

    if-eq v3, v2, :cond_2

    invoke-static {v2}, Lcom/android/dialer/calllog/CallTypeHelper;->isMissedCallType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    move-object/from16 v15, v17

    goto/16 :goto_0

    :cond_3
    move-object/from16 v17, p2

    goto/16 :goto_1

    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-wide v4, v13, Lcom/android/dialer/PhoneCallDetails;->duration:J

    iget-object v3, v13, Lcom/android/dialer/PhoneCallDetails;->dataUsage:Ljava/lang/Long;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->formatDurationAndDataUsage(JLjava/lang/Long;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method
