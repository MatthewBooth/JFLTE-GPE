.class public Lcom/android/systemui/statusbar/NotificationOverflowIconsView;
.super Lcom/android/systemui/statusbar/phone/IconMerger;
.source "NotificationOverflowIconsView.java"


# instance fields
.field private mIconSize:I

.field private mMoreText:Landroid/widget/TextView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IconMerger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyColor(Landroid/app/Notification;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 2
    .param p1    # Landroid/app/Notification;
    .param p2    # Lcom/android/systemui/statusbar/StatusBarIconView;

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mTintColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private updateMoreText()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0122

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addView(Landroid/view/View;II)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->applyColor(Landroid/app/Notification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->updateMoreText()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mTintColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    return-void
.end method

.method public setMoreText(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    return-void
.end method
