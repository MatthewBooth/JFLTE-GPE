.class public Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
.super Ljava/lang/Object;
.source "SContextCurrentStatusForPositioning.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextCurrentStatusForPositioning;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mStatus:I

    return v0
.end method

.method setStatus(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mStatus:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
