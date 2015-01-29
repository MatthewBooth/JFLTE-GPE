.class public Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;
.super Ljava/lang/Object;
.source "SensorHubParserConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$1;,
        Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    }
.end annotation


# static fields
.field private static mPowerResetNotiObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->create()V

    return-void
.end method

.method static synthetic access$100()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mPowerResetNotiObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    .locals 0
    .param p0    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    sput-object p0, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mPowerResetNotiObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-object p0
.end method

.method private create()V
    .locals 6

    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->initialize(Landroid/content/Context;)V

    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->values()[Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->createObj()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mPowerResetNotiObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-object v0
.end method
