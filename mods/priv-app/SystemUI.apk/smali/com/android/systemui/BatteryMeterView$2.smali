.class Lcom/android/systemui/BatteryMeterView$2;
.super Landroid/database/ContentObserver;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    # invokes: Lcom/android/systemui/BatteryMeterView;->loadShowBatterySetting()V
    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$300(Lcom/android/systemui/BatteryMeterView;)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    return-void
.end method
