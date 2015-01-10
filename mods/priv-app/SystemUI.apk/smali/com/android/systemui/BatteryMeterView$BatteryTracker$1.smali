.class Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;
.super Ljava/lang/Object;
.source "BatteryMeterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curLevel:I

.field dummy:Landroid/content/Intent;

.field incr:I

.field saveLevel:I

.field savePlugged:I

.field final synthetic this$1:Lcom/android/systemui/BatteryMeterView$BatteryTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->this$1:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->curLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->incr:I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->this$1:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->saveLevel:I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->this$1:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->savePlugged:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->dummy:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->curLevel:I

    if-gez v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->this$1:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iput-boolean v0, v1, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string v2, "level"

    iget v3, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->saveLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string v2, "plugged"

    iget v3, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->savePlugged:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string v2, "testmode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->this$1:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->dummy:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->this$1:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string v3, "level"

    iget v4, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->curLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string v3, "plugged"

    iget v4, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->incr:I

    if-lez v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->dummy:Landroid/content/Intent;

    const-string v2, "testmode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->curLevel:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->incr:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->curLevel:I

    iget v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->curLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->incr:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->incr:I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;->this$1:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/systemui/BatteryMeterView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
