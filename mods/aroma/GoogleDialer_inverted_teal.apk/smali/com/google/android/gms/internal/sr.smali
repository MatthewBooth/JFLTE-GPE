.class public Lcom/google/android/gms/internal/sr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/TaskList;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/sr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aCQ:Ljava/lang/Integer;

.field public final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/sq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/sr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sr;->aCQ:Ljava/lang/Integer;

    iput p1, p0, Lcom/google/android/gms/internal/sr;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/TaskList;)V
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/TaskList;->getSystemListId()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/sr;-><init>(ILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/sr;-><init>(ILjava/lang/Integer;)V

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sr;->pw()Lcom/google/android/gms/reminders/model/TaskList;

    move-result-object v0

    return-object v0
.end method

.method public getSystemListId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->aCQ:Ljava/lang/Integer;

    return-object v0
.end method

.method public pw()Lcom/google/android/gms/reminders/model/TaskList;
    .locals 0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/sq;->a(Lcom/google/android/gms/internal/sr;Landroid/os/Parcel;I)V

    return-void
.end method
