.class public Landroid/hardware/scontext/SContextGyroTemperature;
.super Ljava/lang/Object;
.source "SContextGyroTemperature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextGyroTemperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGyroTemperature:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextGyroTemperature$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextGyroTemperature$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextGyroTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mGyroTemperature:D

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextGyroTemperature;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mGyroTemperature:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGyroTemperature()D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mGyroTemperature:D

    return-wide v0
.end method

.method setGyroTemperature(D)V
    .locals 1
    .param p1    # D

    iput-wide p1, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mGyroTemperature:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-wide v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mGyroTemperature:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
