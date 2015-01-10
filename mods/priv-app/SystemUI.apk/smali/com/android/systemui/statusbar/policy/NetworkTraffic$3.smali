.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
