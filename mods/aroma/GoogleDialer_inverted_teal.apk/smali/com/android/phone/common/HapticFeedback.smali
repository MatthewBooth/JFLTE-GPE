.class public Lcom/android/phone/common/HapticFeedback;
.super Ljava/lang/Object;
.source "HapticFeedback.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEnabled:Z

.field private mHapticPattern:[J

.field private mSettingEnabled:Z

.field private mSystemSettings:Landroid/provider/Settings$System;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSystemSetting()V
    .locals 6

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/phone/common/HapticFeedback;->mEnabled:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/common/HapticFeedback;->mSystemSettings:Landroid/provider/Settings$System;

    iget-object v2, p0, Lcom/android/phone/common/HapticFeedback;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/common/HapticFeedback;->mSettingEnabled:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HapticFeedback"

    const-string v4, "Could not retrieve system setting."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v3, p0, Lcom/android/phone/common/HapticFeedback;->mSettingEnabled:Z

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Z

    iput-boolean p2, p0, Lcom/android/phone/common/HapticFeedback;->mEnabled:Z

    if-eqz p2, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mHapticPattern:[J

    new-instance v0, Landroid/provider/Settings$System;

    invoke-direct {v0}, Landroid/provider/Settings$System;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mSystemSettings:Landroid/provider/Settings$System;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mContentResolver:Landroid/content/ContentResolver;

    :cond_0
    return-void

    :array_0
    .array-data 8
        0x0
        0xa
        0x14
        0x1e
    .end array-data
.end method

.method public vibrate()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/phone/common/HapticFeedback;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/common/HapticFeedback;->mSettingEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mHapticPattern:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mHapticPattern:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/phone/common/HapticFeedback;->mHapticPattern:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/phone/common/HapticFeedback;->mHapticPattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0
.end method
