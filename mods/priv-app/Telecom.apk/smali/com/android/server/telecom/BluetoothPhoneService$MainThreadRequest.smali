.class final Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;
.super Ljava/lang/Object;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MainThreadRequest"
.end annotation


# instance fields
.field param:I

.field result:Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    return-void
.end method


# virtual methods
.method final setResult(Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
