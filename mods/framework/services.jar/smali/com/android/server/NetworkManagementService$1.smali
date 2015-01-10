.class Lcom/android/server/NetworkManagementService$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;JLandroid/os/Looper;)V
    .locals 0
    .param p2    # J
    .param p4    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0, p2, p3, p4}, Landroid/telephony/PhoneStateListener;-><init>(JLandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 7
    .param p1    # Landroid/telephony/DataConnectionRealTimeInfo;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->getDcPowerState()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->getTime()J

    move-result-wide v4

    const/4 v6, 0x1

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJZ)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;IIJZ)V

    return-void
.end method
