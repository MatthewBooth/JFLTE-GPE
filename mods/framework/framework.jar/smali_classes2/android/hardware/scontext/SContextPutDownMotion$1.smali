.class final Landroid/hardware/scontext/SContextPutDownMotion$1;
.super Ljava/lang/Object;
.source "SContextPutDownMotion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextPutDownMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/scontext/SContextPutDownMotion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextPutDownMotion;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    new-instance v0, Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextPutDownMotion;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextPutDownMotion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextPutDownMotion;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextPutDownMotion;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Landroid/hardware/scontext/SContextPutDownMotion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextPutDownMotion$1;->newArray(I)[Landroid/hardware/scontext/SContextPutDownMotion;

    move-result-object v0

    return-object v0
.end method
