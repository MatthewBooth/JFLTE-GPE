.class public Lcom/google/android/gms/internal/st;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/Time;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/st;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aCR:Ljava/lang/Integer;

.field private final aCS:Ljava/lang/Integer;

.field private final aCT:Ljava/lang/Integer;

.field public final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ss;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ss;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/st;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/st;->aCR:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/st;->aCS:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/st;->aCT:Ljava/lang/Integer;

    iput p1, p0, Lcom/google/android/gms/internal/st;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Time;)V
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->getHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->getMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->getSecond()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/st;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/st;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/st;->px()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    return-object v0
.end method

.method public getHour()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/st;->aCR:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinute()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/st;->aCS:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/st;->aCT:Ljava/lang/Integer;

    return-object v0
.end method

.method public px()Lcom/google/android/gms/reminders/model/Time;
    .locals 0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ss;->a(Lcom/google/android/gms/internal/st;Landroid/os/Parcel;I)V

    return-void
.end method
