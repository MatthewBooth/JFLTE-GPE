.class final Lcom/android/services/telephony/TtyManager;
.super Ljava/lang/Object;
.source "TtyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

.field private mTtyMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;-><init>(Lcom/android/services/telephony/TtyManager;Lcom/android/services/telephony/TtyManager$1;)V

    iput-object v3, p0, Lcom/android/services/telephony/TtyManager;->mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    new-instance v3, Lcom/android/services/telephony/TtyManager$1;

    invoke-direct {v3, p0}, Lcom/android/services/telephony/TtyManager$1;-><init>(Lcom/android/services/telephony/TtyManager;)V

    iput-object v3, p0, Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/services/telephony/TtyManager;->mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v2

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/TtyManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/services/telephony/TtyManager;

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0    # I

    invoke-static {p0}, Lcom/android/services/telephony/TtyManager;->phoneModeToTelecomMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/services/telephony/TtyManager;)I
    .locals 1
    .param p0    # Lcom/android/services/telephony/TtyManager;

    iget v0, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/services/telephony/TtyManager;I)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/TtyManager;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V

    return-void
.end method

.method private static phoneModeToTelecomMode(I)I
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static telecomModeToPhoneMode(I)I
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateTtyMode(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x1

    const-string v0, "updateTtyMode %d -> %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p1}, Lcom/android/services/telephony/TtyManager;->telecomModeToPhoneMode(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    return-void
.end method
