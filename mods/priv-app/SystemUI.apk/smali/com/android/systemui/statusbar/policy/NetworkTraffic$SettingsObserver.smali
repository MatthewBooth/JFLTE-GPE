.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "network_traffic_state"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "network_traffic_autohide"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "network_traffic_autohide_threshold"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "network_traffic_show_icon"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "network_traffic_show_text"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    return-void
.end method
