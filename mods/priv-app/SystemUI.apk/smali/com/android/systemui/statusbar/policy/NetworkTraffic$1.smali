.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;
.super Landroid/database/ContentObserver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    return-void
.end method
