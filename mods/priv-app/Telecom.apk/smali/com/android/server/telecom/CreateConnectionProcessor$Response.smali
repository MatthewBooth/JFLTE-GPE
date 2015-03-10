.class final Lcom/android/server/telecom/CreateConnectionProcessor$Response;
.super Ljava/lang/Object;
.source "CreateConnectionProcessor.java"

# interfaces
.implements Lcom/android/server/telecom/CreateConnectionResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/CreateConnectionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Response"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/telecom/ConnectionServiceWrapper;

.field private synthetic this$0:Lcom/android/server/telecom/CreateConnectionProcessor;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/CreateConnectionProcessor;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->mService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    return-void
.end method


# virtual methods
.method public final handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    const-string v1, "Connection failed: (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # setter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mLastErrorDisconnectCause:Landroid/telecom/DisconnectCause;
    invoke-static {v0, p1}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$202(Lcom/android/server/telecom/CreateConnectionProcessor;Landroid/telecom/DisconnectCause;)Landroid/telecom/DisconnectCause;

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # invokes: Lcom/android/server/telecom/CreateConnectionProcessor;->attemptNextPhoneAccount()V
    invoke-static {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$300(Lcom/android/server/telecom/CreateConnectionProcessor;)V

    return-void
.end method

.method public final handleCreateConnectionSuccess(Lcom/android/server/telecom/CallIdMapper;Landroid/telecom/ParcelableConnection;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # getter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;
    invoke-static {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$000(Lcom/android/server/telecom/CreateConnectionProcessor;)Lcom/android/server/telecom/CreateConnectionResponse;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->mService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # getter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v1}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$100(Lcom/android/server/telecom/CreateConnectionProcessor;)Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->abort(Lcom/android/server/telecom/Call;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # getter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;
    invoke-static {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$000(Lcom/android/server/telecom/CreateConnectionProcessor;)Lcom/android/server/telecom/CreateConnectionResponse;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/telecom/CreateConnectionResponse;->handleCreateConnectionSuccess(Lcom/android/server/telecom/CallIdMapper;Landroid/telecom/ParcelableConnection;)V

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$002(Lcom/android/server/telecom/CreateConnectionProcessor;Lcom/android/server/telecom/CreateConnectionResponse;)Lcom/android/server/telecom/CreateConnectionResponse;

    goto :goto_0
.end method
