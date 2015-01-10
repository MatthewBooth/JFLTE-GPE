.class Lcom/android/server/location/GpsNavigationMessageProvider$1;
.super Ljava/lang/Object;
.source "GpsNavigationMessageProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GpsNavigationMessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/IGpsNavigationMessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsNavigationMessageProvider;

.field final synthetic val$event:Landroid/location/GpsNavigationMessageEvent;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsNavigationMessageProvider;Landroid/location/GpsNavigationMessageEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GpsNavigationMessageProvider$1;->this$0:Lcom/android/server/location/GpsNavigationMessageProvider;

    iput-object p2, p0, Lcom/android/server/location/GpsNavigationMessageProvider$1;->val$event:Landroid/location/GpsNavigationMessageEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsNavigationMessageListener;)V
    .locals 1
    .param p1    # Landroid/location/IGpsNavigationMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/GpsNavigationMessageProvider$1;->val$event:Landroid/location/GpsNavigationMessageEvent;

    invoke-interface {p1, v0}, Landroid/location/IGpsNavigationMessageListener;->onGpsNavigationMessageReceived(Landroid/location/GpsNavigationMessageEvent;)V

    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .param p1    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Landroid/location/IGpsNavigationMessageListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider$1;->execute(Landroid/location/IGpsNavigationMessageListener;)V

    return-void
.end method
