.class Lcom/android/systemui/BatteryLevelTextView$1;
.super Landroid/database/ContentObserver;
.source "BatteryLevelTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryLevelTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryLevelTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryLevelTextView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/BatteryLevelTextView$1;->this$0:Lcom/android/systemui/BatteryLevelTextView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView$1;->this$0:Lcom/android/systemui/BatteryLevelTextView;

    # invokes: Lcom/android/systemui/BatteryLevelTextView;->loadShowBatteryTextSetting()V
    invoke-static {v0}, Lcom/android/systemui/BatteryLevelTextView;->access$000(Lcom/android/systemui/BatteryLevelTextView;)V

    iget-object v1, p0, Lcom/android/systemui/BatteryLevelTextView$1;->this$0:Lcom/android/systemui/BatteryLevelTextView;

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView$1;->this$0:Lcom/android/systemui/BatteryLevelTextView;

    # getter for: Lcom/android/systemui/BatteryLevelTextView;->mShow:Z
    invoke-static {v0}, Lcom/android/systemui/BatteryLevelTextView;->access$100(Lcom/android/systemui/BatteryLevelTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/BatteryLevelTextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
