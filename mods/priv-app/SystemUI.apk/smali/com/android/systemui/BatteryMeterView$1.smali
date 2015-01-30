.class Lcom/android/systemui/BatteryMeterView$1;
.super Ljava/lang/Object;
.source "BatteryMeterView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterView;->invalidateIfVisible()V

    return-void
.end method
