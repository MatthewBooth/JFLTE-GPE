.class Lcom/android/server/BatteryService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "battery_light_pulse"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mMultiColorLed:Z
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "battery_light_low_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "battery_light_medium_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "battery_light_full_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/server/BatteryService$SettingsObserver;->update()V

    return-void
.end method

.method public update()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "battery_light_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    # setter for: Lcom/android/server/BatteryService;->mLightEnabled:Z
    invoke-static {v5, v2}, Lcom/android/server/BatteryService;->access$1002(Lcom/android/server/BatteryService;Z)Z

    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "battery_light_pulse"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    # setter for: Lcom/android/server/BatteryService;->mLedPulseEnabled:Z
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$1302(Lcom/android/server/BatteryService;Z)Z

    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v3, "battery_light_low_color"

    const v4, 0x10e0043

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/BatteryService;->mBatteryLowARGB:I
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$1202(Lcom/android/server/BatteryService;I)I

    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v3, "battery_light_medium_color"

    const v4, 0x10e0044

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/BatteryService;->mBatteryMediumARGB:I
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$1502(Lcom/android/server/BatteryService;I)I

    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v3, "battery_light_full_color"

    const v4, 0x10e0045

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/BatteryService;->mBatteryFullARGB:I
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$1402(Lcom/android/server/BatteryService;I)I

    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->updateLedPulse()V
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method
