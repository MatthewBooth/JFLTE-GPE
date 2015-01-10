.class public Lcom/android/systemui/statusbar/policy/WifiAccessPointController;
.super Ljava/lang/Object;
.source "WifiAccessPointController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;
    }
.end annotation


# static fields
.field private static final ICONS:[I


# instance fields
.field private final mByStrength:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;

.field private mScanning:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->ICONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0200a8
        0x7f0200b0
        0x7f0200b1
        0x7f0200b2
        0x7f0200b3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;Lcom/android/systemui/statusbar/policy/WifiAccessPointController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mReceiver:Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$2;-><init>(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mByStrength:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/WifiAccessPointController;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mScanning:Z

    return p1
.end method

.method private fireCallback([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V
    .locals 3
    .param p1    # [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;->onAccessPointsChanged([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getConfiguredNetworksBySsid()Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    sget-object v3, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    :cond_1
    return-object v3

    :cond_2
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getConnectedNetworkId()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;

    const/16 v2, 0x22

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private updateAccessPoints()V
    .locals 14

    const/4 v12, -0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->getConnectedNetworkId()I

    move-result v4

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->getConfiguredNetworksBySsid()Landroid/util/ArrayMap;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    if-eqz v7, :cond_0

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v11, v7, Landroid/net/wifi/ScanResult;->level:I

    sget-object v13, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->ICONS:[I

    array-length v13, v13

    invoke-static {v11, v13}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;-><init>()V

    if-eqz v2, :cond_1

    iget v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :goto_1
    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->networkId:I

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->ssid:Ljava/lang/String;

    sget-object v11, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->ICONS:[I

    aget v11, v11, v6

    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->iconId:I

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->networkId:I

    if-eq v11, v12, :cond_2

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->networkId:I

    if-ne v11, v4, :cond_2

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->isConnected:Z

    iput v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->level:I

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v11, v12

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mByStrength:Ljava/util/Comparator;

    invoke-static {v1, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    invoke-interface {v1, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->fireCallback([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mReceiver:Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->setListening(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->networkId:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->networkId:I

    new-instance v2, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$1;-><init>(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mReceiver:Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->setListening(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public scan()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mScanning:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mScanning:Z

    goto :goto_0
.end method
