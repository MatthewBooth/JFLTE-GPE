.class public final Lcom/google/android/gms/location/copresence/SubscribedMessage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/copresence/SubscribedMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aoe:Lcom/google/android/gms/location/copresence/Message;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/copresence/m;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/copresence/SubscribedMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/copresence/Message;)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/location/copresence/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/copresence/SubscribedMessage;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/copresence/SubscribedMessage;->aoe:Lcom/google/android/gms/location/copresence/Message;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/google/android/gms/location/copresence/SubscribedMessage;

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/SubscribedMessage;->aoe:Lcom/google/android/gms/location/copresence/Message;

    iget-object v1, p1, Lcom/google/android/gms/location/copresence/SubscribedMessage;->aoe:Lcom/google/android/gms/location/copresence/Message;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getMessage()Lcom/google/android/gms/location/copresence/Message;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/SubscribedMessage;->aoe:Lcom/google/android/gms/location/copresence/Message;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/SubscribedMessage;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/copresence/SubscribedMessage;->aoe:Lcom/google/android/gms/location/copresence/Message;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/copresence/m;->a(Lcom/google/android/gms/location/copresence/SubscribedMessage;Landroid/os/Parcel;I)V

    return-void
.end method
