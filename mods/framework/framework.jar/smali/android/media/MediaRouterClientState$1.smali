.class final Landroid/media/MediaRouterClientState$1;
.super Ljava/lang/Object;
.source "MediaRouterClientState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouterClientState;
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
        "Landroid/media/MediaRouterClientState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaRouterClientState;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    new-instance v0, Landroid/media/MediaRouterClientState;

    invoke-direct {v0, p1}, Landroid/media/MediaRouterClientState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouterClientState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaRouterClientState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/MediaRouterClientState;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Landroid/media/MediaRouterClientState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/media/MediaRouterClientState$1;->newArray(I)[Landroid/media/MediaRouterClientState;

    move-result-object v0

    return-object v0
.end method
