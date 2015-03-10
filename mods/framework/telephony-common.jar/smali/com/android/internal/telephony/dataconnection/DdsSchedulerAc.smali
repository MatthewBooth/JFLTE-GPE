.class public Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;
.super Lcom/android/internal/util/AsyncChannel;
.source "DdsSchedulerAc.java"


# static fields
.field public static final BASE:I = 0x84000

.field public static final EVENT_ADD_REQUEST:I = 0x84005

.field public static final EVENT_MODEM_DATA_CAPABILITY_UPDATE:I = 0x84004

.field public static final EVENT_ON_DEMAND_DDS_SWITCH_DONE:I = 0x84002

.field public static final EVENT_ON_DEMAND_PS_ATTACH_DONE:I = 0x84003

.field public static final EVENT_REMOVE_REQUEST:I = 0x84006

.field public static final REQ_DDS_ALLOCATION:I = 0x84000

.field public static final REQ_DDS_FREE:I = 0x84001


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    const-string v0, "DdsSchedulerAc"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public allocateDds(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1    # Landroid/net/NetworkRequest;

    const-string v0, "DdsSchedulerAc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_ADD_REQUEST = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x84005

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public freeDds(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1    # Landroid/net/NetworkRequest;

    const-string v0, "DdsSchedulerAc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_REMOVE_REQUEST = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x84006

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
