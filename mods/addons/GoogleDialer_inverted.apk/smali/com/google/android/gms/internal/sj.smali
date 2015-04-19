.class public Lcom/google/android/gms/internal/sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/DateTime;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/sj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aCp:Ljava/lang/Integer;

.field private final aCq:Ljava/lang/Integer;

.field private final aCr:Ljava/lang/Integer;

.field private final aCs:Lcom/google/android/gms/internal/st;

.field private final aCt:Ljava/lang/Integer;

.field private final aCu:Ljava/lang/Long;

.field public final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/si;

    invoke-direct {v0}, Lcom/google/android/gms/internal/si;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/sj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/internal/st;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sj;->aCp:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/sj;->aCq:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/sj;->aCr:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/google/android/gms/internal/sj;->aCs:Lcom/google/android/gms/internal/st;

    iput-object p6, p0, Lcom/google/android/gms/internal/sj;->aCt:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/google/android/gms/internal/sj;->aCu:Ljava/lang/Long;

    iput p1, p0, Lcom/google/android/gms/internal/sj;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sj;->aCp:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/sj;->aCq:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/sj;->aCr:Ljava/lang/Integer;

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/sj;->aCs:Lcom/google/android/gms/internal/st;

    iput-object p6, p0, Lcom/google/android/gms/internal/sj;->aCt:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/google/android/gms/internal/sj;->aCu:Ljava/lang/Long;

    iput p1, p0, Lcom/google/android/gms/internal/sj;->mVersionCode:I

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/st;

    invoke-direct {v0, p5}, Lcom/google/android/gms/internal/st;-><init>(Lcom/google/android/gms/reminders/model/Time;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/DateTime;)V
    .locals 8

    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getPeriod()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getAbsoluteTimeMs()Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/sj;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 8

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/sj;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Long;)V

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sj;->pt()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getAbsoluteTimeMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->aCu:Ljava/lang/Long;

    return-object v0
.end method

.method public getDay()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->aCr:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMonth()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->aCq:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->aCt:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTime()Lcom/google/android/gms/reminders/model/Time;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->aCs:Lcom/google/android/gms/internal/st;

    return-object v0
.end method

.method public getYear()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sj;->aCp:Ljava/lang/Integer;

    return-object v0
.end method

.method public pt()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/si;->a(Lcom/google/android/gms/internal/sj;Landroid/os/Parcel;I)V

    return-void
.end method
