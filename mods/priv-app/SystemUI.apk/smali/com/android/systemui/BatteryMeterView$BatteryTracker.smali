.class Lcom/android/systemui/BatteryMeterView$BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryTracker"
.end annotation


# instance fields
.field health:I

.field level:I

.field plugType:I

.field plugged:Z

.field status:I

.field technology:Ljava/lang/String;

.field temperature:I

.field testmode:Z

.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;

.field voltage:I


# direct methods
.method private constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/BatteryMeterView;
    .param p2    # Lcom/android/systemui/BatteryMeterView$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    if-eqz v1, :cond_1

    const-string v1, "testmode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v1, 0x42c80000

    const-string v4, "level"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const-string v1, "plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    const-string v1, "health"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    const-string v1, "status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const-string v1, "technology"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->technology:Ljava/lang/String;

    const-string v1, "voltage"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->voltage:I

    const-string v1, "temperature"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->temperature:I

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    const v4, 0x7f0b0085

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    new-instance v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;-><init>(Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/BatteryMeterView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
