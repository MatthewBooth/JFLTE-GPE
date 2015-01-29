.class Landroid/net/ConnectivityManager$1;
.super Landroid/os/INetworkActivityListener$Stub;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ConnectivityManager;

.field final synthetic val$l:Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ConnectivityManager$1;->this$0:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Landroid/net/ConnectivityManager$1;->val$l:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    invoke-direct {p0}, Landroid/os/INetworkActivityListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/ConnectivityManager$1;->val$l:Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    invoke-interface {v0}, Landroid/net/ConnectivityManager$OnNetworkActiveListener;->onNetworkActive()V

    return-void
.end method
