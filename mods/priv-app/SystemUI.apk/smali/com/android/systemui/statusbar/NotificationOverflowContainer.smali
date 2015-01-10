.class public Lcom/android/systemui/statusbar/NotificationOverflowContainer;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "NotificationOverflowContainer.java"


# instance fields
.field private mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    const v0, 0x7f0e0123

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    const v0, 0x7f0e0121

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->setMoreText(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    const v1, 0x7f0e0122

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->setOverflowIndicator(Landroid/view/View;)V

    return-void
.end method
