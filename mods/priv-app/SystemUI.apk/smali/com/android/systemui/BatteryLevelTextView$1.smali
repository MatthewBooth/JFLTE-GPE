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
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/BatteryLevelTextView$1;->this$0:Lcom/android/systemui/BatteryLevelTextView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView$1;->this$0:Lcom/android/systemui/BatteryLevelTextView;

    # invokes: Lcom/android/systemui/BatteryLevelTextView;->loadShowBatteryTextSetting()V
    invoke-static {v0}, Lcom/android/systemui/BatteryLevelTextView;->access$000(Lcom/android/systemui/BatteryLevelTextView;)V

    return-void
.end method
