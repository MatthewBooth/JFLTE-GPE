.class public Lcom/android/systemui/qs/QSDetailItems;
.super Landroid/widget/FrameLayout;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetailItems$Callback;,
        Lcom/android/systemui/qs/QSDetailItems$Item;,
        Lcom/android/systemui/qs/QSDetailItems$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

.field private final mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private final mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

.field private mItems:Landroid/widget/LinearLayout;

.field private mItemsVisible:Z

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "QSDetailItems"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailItems$H;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    const-string v0, "QSDetailItems"

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSDetailItems;[Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSDetailItems;
    .param p1    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSDetailItems;
    .param p1    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSDetailItems;Z)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/QSDetailItems;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItemsVisible(Z)V

    return-void
.end method

.method private bind(Lcom/android/systemui/qs/QSDetailItems$Item;Landroid/view/View;)V
    .locals 9
    .param p1    # Lcom/android/systemui/qs/QSDetailItems$Item;
    .param p2    # Landroid/view/View;

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f040032

    invoke-virtual {v5, v8, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x1020006

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x1020016

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x1020010

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v4, :cond_4

    iget-object v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_5

    const v5, 0x7f0c0044

    :goto_4
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    new-instance v5, Lcom/android/systemui/qs/QSDetailItems$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/qs/QSDetailItems$1;-><init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x1020008

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    if-eqz v5, :cond_6

    :goto_5
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v5, Lcom/android/systemui/qs/QSDetailItems$2;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/qs/QSDetailItems$2;-><init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    const v5, 0x7f0c0043

    goto :goto_4

    :cond_6
    move v6, v7

    goto :goto_5
.end method

.method public static convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    instance-of v0, p1, Lcom/android/systemui/qs/QSDetailItems;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/QSDetailItems;

    :goto_0
    return-object p1

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetailItems;

    move-object p1, v0

    goto :goto_0
.end method

.method private handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    return-void
.end method

.method private handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 6
    .param p1    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    const/16 v4, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    if-nez v1, :cond_1

    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_3
    if-lt v0, v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_4

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/qs/QSDetailItems;->bind(Lcom/android/systemui/qs/QSDetailItems$Item;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private handleSetItemsVisible(Z)V
    .locals 3
    .param p1    # Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-ne v1, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    const v4, 0x7f0c004a

    invoke-static {v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020016

    const v4, 0x7f0c0048

    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v3, 0x1020010

    const v4, 0x7f0c0049

    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEmptyState(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2
    .param p1    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setTagSuffix(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QSDetailItems."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    return-void
.end method
