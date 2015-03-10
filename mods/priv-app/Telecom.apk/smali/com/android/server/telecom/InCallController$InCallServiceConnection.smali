.class final Lcom/android/server/telecom/InCallController$InCallServiceConnection;
.super Ljava/lang/Object;
.source "InCallController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/InCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InCallServiceConnection"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/InCallController;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/InCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/InCallController$InCallServiceConnection;->this$0:Lcom/android/server/telecom/InCallController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/InCallController;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController$InCallServiceConnection;-><init>(Lcom/android/server/telecom/InCallController;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "onServiceConnected: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController$InCallServiceConnection;->this$0:Lcom/android/server/telecom/InCallController;

    invoke-static {v0, p1, p2}, Lcom/android/server/telecom/InCallController;->access$000(Lcom/android/server/telecom/InCallController;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "onDisconnected: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController$InCallServiceConnection;->this$0:Lcom/android/server/telecom/InCallController;

    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$100(Lcom/android/server/telecom/InCallController;Landroid/content/ComponentName;)V

    return-void
.end method
