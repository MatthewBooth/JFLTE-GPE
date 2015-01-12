.class public Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final YC:I

.field final YD:I

.field final YU:Ljava/lang/String;

.field final YV:I

.field final mIndex:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/j;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIILjava/lang/String;I)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .param p6    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;->mIndex:I

    iput p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;->YC:I

    iput p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;->YD:I

    iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;->YU:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;->YV:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/j;->a(Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;Landroid/os/Parcel;I)V

    return-void
.end method
