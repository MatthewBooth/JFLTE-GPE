.class public Lcom/android/systemui/qs/tiles/ColorInversionTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ColorInversionTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mListening:Z

.field private final mSetting:Lcom/android/systemui/qs/SecureSetting;

.field private final mUsageTracker:Lcom/android/systemui/qs/UsageTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1    # Lcom/android/systemui/qs/QSTile$Host;

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "accessibility_display_inversion_enabled"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;-><init>(Lcom/android/systemui/qs/tiles/ColorInversionTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    new-instance v0, Lcom/android/systemui/qs/UsageTracker;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/UsageTracker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0}, Lcom/android/systemui/qs/UsageTracker;->isRecentlyUsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0}, Lcom/android/systemui/qs/UsageTracker;->trackUsage()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/ColorInversionTile;)Lcom/android/systemui/qs/UsageTracker;
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/ColorInversionTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ColorInversionTile;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/qs/tiles/ColorInversionTile;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mListening:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ColorInversionTile;Ljava/lang/Object;)V
    .locals 0
    .param p0    # Lcom/android/systemui/qs/tiles/ColorInversionTile;
    .param p1    # Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5
    .param p1    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2    # Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v4, p2, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    move v0, v3

    :goto_1
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v4}, Lcom/android/systemui/qs/UsageTracker;->isRecentlyUsed()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    if-eqz v0, :cond_4

    const v2, 0x7f02007d

    :goto_2
    iput v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const v2, 0x7f02007c

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSTile$State;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mListening:Z

    return-void
.end method
