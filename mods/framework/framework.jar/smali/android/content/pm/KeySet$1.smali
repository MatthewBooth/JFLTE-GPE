.class final Landroid/content/pm/KeySet$1;
.super Ljava/lang/Object;
.source "KeySet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/KeySet;
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
        "Landroid/content/pm/KeySet;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    # invokes: Landroid/content/pm/KeySet;->readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    invoke-static {p1}, Landroid/content/pm/KeySet;->access$000(Landroid/os/Parcel;)Landroid/content/pm/KeySet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/content/pm/KeySet$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/KeySet;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Landroid/content/pm/KeySet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/content/pm/KeySet$1;->newArray(I)[Landroid/content/pm/KeySet;

    move-result-object v0

    return-object v0
.end method
