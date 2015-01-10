.class final Lcom/android/server/tv/TvInputManagerService$UserState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation


# instance fields
.field private final callbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/media/tv/ITvInputManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final clientStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvInputManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final contentRatingSystemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private inputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/tv/TvInputManagerService$TvInputState;",
            ">;"
        }
    .end annotation
.end field

.field private mainSessionToken:Landroid/os/IBinder;

.field private final packageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

.field private final serviceStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/tv/TvInputManagerService$ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvInputManagerService$SessionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    new-instance v0, Lcom/android/server/tv/PersistentDataStore;

    invoke-direct {v0, p1, p2}, Lcom/android/server/tv/PersistentDataStore;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$1;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Lcom/android/server/tv/TvInputManagerService$1;

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p1    # Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;
    .locals 1
    .param p0    # Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;
    .locals 1
    .param p0    # Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p1    # Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;
    .locals 1
    .param p0    # Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;
    .locals 1
    .param p0    # Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    return-object v0
.end method
