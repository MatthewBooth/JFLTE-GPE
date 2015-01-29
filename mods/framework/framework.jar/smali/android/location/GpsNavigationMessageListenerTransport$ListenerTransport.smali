.class Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;
.super Landroid/location/IGpsNavigationMessageListener$Stub;
.source "GpsNavigationMessageListenerTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsNavigationMessageListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/GpsNavigationMessageListenerTransport;


# direct methods
.method private constructor <init>(Landroid/location/GpsNavigationMessageListenerTransport;)V
    .locals 0

    iput-object p1, p0, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;->this$0:Landroid/location/GpsNavigationMessageListenerTransport;

    invoke-direct {p0}, Landroid/location/IGpsNavigationMessageListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GpsNavigationMessageListenerTransport;Landroid/location/GpsNavigationMessageListenerTransport$1;)V
    .locals 0
    .param p1    # Landroid/location/GpsNavigationMessageListenerTransport;
    .param p2    # Landroid/location/GpsNavigationMessageListenerTransport$1;

    invoke-direct {p0, p1}, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;-><init>(Landroid/location/GpsNavigationMessageListenerTransport;)V

    return-void
.end method


# virtual methods
.method public onGpsNavigationMessageReceived(Landroid/location/GpsNavigationMessageEvent;)V
    .locals 2
    .param p1    # Landroid/location/GpsNavigationMessageEvent;

    new-instance v0, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport$1;-><init>(Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;Landroid/location/GpsNavigationMessageEvent;)V

    iget-object v1, p0, Landroid/location/GpsNavigationMessageListenerTransport$ListenerTransport;->this$0:Landroid/location/GpsNavigationMessageListenerTransport;

    invoke-virtual {v1, v0}, Landroid/location/GpsNavigationMessageListenerTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    return-void
.end method
