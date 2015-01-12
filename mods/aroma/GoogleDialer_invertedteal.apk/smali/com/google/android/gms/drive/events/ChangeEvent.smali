.class public final Lcom/google/android/gms/drive/events/ChangeEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/events/ResourceEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/ChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final SM:I

.field final Sc:Lcom/google/android/gms/drive/DriveId;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/a;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/ChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;I)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/drive/DriveId;
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->Sc:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->SM:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ChangeEvent [id=%s,changeFlags=%x]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->Sc:Lcom/google/android/gms/drive/DriveId;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->SM:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/a;->a(Lcom/google/android/gms/drive/events/ChangeEvent;Landroid/os/Parcel;I)V

    return-void
.end method
