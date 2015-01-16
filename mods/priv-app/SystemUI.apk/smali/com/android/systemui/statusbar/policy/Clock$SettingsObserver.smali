.class Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/os/Handler;)V
    .locals 1
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    # getter for: Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$400(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 5

    const/4 v4, 0x0

   const-string v3, "clock_dow"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "clock_am_pm"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v0, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
