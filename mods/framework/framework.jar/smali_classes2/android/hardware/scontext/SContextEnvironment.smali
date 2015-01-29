.class public Landroid/hardware/scontext/SContextEnvironment;
.super Ljava/lang/Object;
.source "SContextEnvironment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEnvironment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBundleInfo:Landroid/os/Bundle;

.field private mSensorType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextEnvironment$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironment$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEnvironment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEnvironment;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mSensorType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()[D
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/scontext/SContextEnvironment;->getData(I)[D

    move-result-object v0

    return-object v0
.end method

.method public getData(I)[D
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/scontext/SContextEnvironment;->mSensorType:I

    if-ne v1, v2, :cond_0

    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    const-string v2, "Temperature"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ne p1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    const-string v2, "Humidity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getSensorType()I
    .locals 1

    iget v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mSensorType:I

    return v0
.end method

.method setData(I[D)V
    .locals 2
    .param p1    # I
    .param p2    # [D

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    const-string v1, "Temperature"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    const-string v1, "Humidity"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0
.end method

.method setData(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    return-void
.end method

.method setSensorType(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/hardware/scontext/SContextEnvironment;->mSensorType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mSensorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
