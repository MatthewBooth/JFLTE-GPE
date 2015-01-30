.class public Lcom/android/systemui/BatteryLevelTextView;
.super Landroid/widget/TextView;
.source "BatteryLevelTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mAttached:Z

.field private mBatteryCharging:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mForceShow:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private mRequestedVisibility:I

.field private mShow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/BatteryLevelTextView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/BatteryLevelTextView$1;-><init>(Lcom/android/systemui/BatteryLevelTextView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryLevelTextView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mRequestedVisibility:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryLevelTextView;->loadShowBatteryTextSetting()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/BatteryLevelTextView;)V
    .locals 0
    .param p0    # Lcom/android/systemui/BatteryLevelTextView;

    invoke-direct {p0}, Lcom/android/systemui/BatteryLevelTextView;->loadShowBatteryTextSetting()V

    return-void
.end method

.method private loadShowBatteryTextSetting()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/BatteryLevelTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v6, "status_bar_show_battery_percent"

    invoke-static {v3, v6, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-boolean v6, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryCharging:Z

    if-eqz v6, :cond_0

    if-eq v2, v4, :cond_1

    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    :cond_1
    :goto_0
    const-string v6, "status_bar_battery_style"

    invoke-static {v3, v6, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/systemui/BatteryLevelTextView;->mShow:Z

    invoke-direct {p0}, Lcom/android/systemui/BatteryLevelTextView;->updateVisibility()V

    return-void

    :cond_2
    move v4, v5

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateVisibility()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mShow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mForceShow:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mRequestedVisibility:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/BatteryLevelTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_battery_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryLevelTextView;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryLevelTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryLevelTextView;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mAttached:Z

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 6
    .param p1    # I
    .param p2    # Z
    .param p3    # Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/BatteryLevelTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0140

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryLevelTextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryCharging:Z

    if-eq v2, p3, :cond_1

    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryCharging:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/BatteryLevelTextView;->loadShowBatteryTextSetting()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/BatteryLevelTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryLevelTextView;->setTextSize(IF)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/BatteryLevelTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryLevelTextView;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    :cond_0
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 0

    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-boolean v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    :cond_0
    return-void
.end method

.method public setForceShown(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/BatteryLevelTextView;->mForceShow:Z

    invoke-direct {p0}, Lcom/android/systemui/BatteryLevelTextView;->updateVisibility()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/BatteryLevelTextView;->mRequestedVisibility:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryLevelTextView;->updateVisibility()V

    return-void
.end method
