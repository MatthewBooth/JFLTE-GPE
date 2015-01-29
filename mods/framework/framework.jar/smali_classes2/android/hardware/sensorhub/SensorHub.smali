.class public Landroid/hardware/sensorhub/SensorHub;
.super Ljava/lang/Object;
.source "SensorHub.java"


# static fields
.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_CONTEXT:I = 0x1

.field public static final TYPE_GESTURE:I = 0x2


# instance fields
.field private mHandle:I

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mType:I

.field private mVendor:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getHandle()I
    .locals 1

    iget v0, p0, Landroid/hardware/sensorhub/SensorHub;->mHandle:I

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    iget v0, p0, Landroid/hardware/sensorhub/SensorHub;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHub;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/hardware/sensorhub/SensorHub;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/sensorhub/SensorHub;->mVendor:Ljava/lang/String;

    return-object v0
.end method
