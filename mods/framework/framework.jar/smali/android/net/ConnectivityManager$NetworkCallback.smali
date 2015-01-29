.class public Landroid/net/ConnectivityManager$NetworkCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkCallback"
.end annotation


# static fields
.field public static final AVAILABLE:I = 0x2

.field public static final CANCELED:I = 0x8

.field public static final CAP_CHANGED:I = 0x6

.field public static final LOSING:I = 0x3

.field public static final LOST:I = 0x4

.field public static final PRECHECK:I = 0x1

.field public static final PROP_CHANGED:I = 0x7

.field public static final UNAVAIL:I = 0x5


# instance fields
.field private networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;
    .locals 1
    .param p0    # Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v0, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    .locals 0
    .param p0    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p1    # Landroid/net/NetworkRequest;

    iput-object p1, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object p1
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0
    .param p1    # Landroid/net/Network;

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1    # Landroid/net/Network;
    .param p2    # Landroid/net/NetworkCapabilities;

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1    # Landroid/net/Network;
    .param p2    # Landroid/net/LinkProperties;

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0
    .param p1    # Landroid/net/Network;
    .param p2    # I

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0
    .param p1    # Landroid/net/Network;

    return-void
.end method

.method public onPreCheck(Landroid/net/Network;)V
    .locals 0
    .param p1    # Landroid/net/Network;

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    return-void
.end method
