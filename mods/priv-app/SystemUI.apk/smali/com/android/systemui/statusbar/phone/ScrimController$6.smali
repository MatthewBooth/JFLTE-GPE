.class Lcom/android/systemui/statusbar/phone/ScrimController$6;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScrimController"

    const-string v1, "Pulse out finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->tracePulseFinish()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # invokes: Lcom/android/systemui/statusbar/phone/ScrimController;->pulseFinished()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1300(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    return-void
.end method
