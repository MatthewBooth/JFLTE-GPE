.class Lcom/android/systemui/qs/tiles/ColorInversionTile$1;
.super Lcom/android/systemui/qs/SecureSetting;
.source "ColorInversionTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ColorInversionTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ColorInversionTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/os/Handler;
    .param p4    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    # getter for: Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->access$000(Lcom/android/systemui/qs/tiles/ColorInversionTile;)Lcom/android/systemui/qs/UsageTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/UsageTracker;->trackUsage()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    # getter for: Lcom/android/systemui/qs/tiles/ColorInversionTile;->mListening:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->access$100(Lcom/android/systemui/qs/tiles/ColorInversionTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleRefreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->access$200(Lcom/android/systemui/qs/tiles/ColorInversionTile;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
