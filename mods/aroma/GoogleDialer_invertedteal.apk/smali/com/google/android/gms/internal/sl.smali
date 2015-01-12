.class public Lcom/google/android/gms/internal/sl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/Location;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/sl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aCv:Ljava/lang/Double;

.field private final aCw:Ljava/lang/Double;

.field private final aCx:Ljava/lang/Integer;

.field private final aCy:Ljava/lang/Integer;

.field private final aCz:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field public final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/sk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/sl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sl;->aCv:Ljava/lang/Double;

    iput-object p3, p0, Lcom/google/android/gms/internal/sl;->aCw:Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/android/gms/internal/sl;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/sl;->aCx:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/android/gms/internal/sl;->aCy:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/google/android/gms/internal/sl;->aCz:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/sl;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Location;)V
    .locals 8

    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getLat()Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getLng()Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getRadiusMeters()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getLocationType()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getDisplayAddress()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/sl;-><init>(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/sl;-><init>(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sl;->pu()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->aCz:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->aCv:Ljava/lang/Double;

    return-object v0
.end method

.method public getLng()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->aCw:Ljava/lang/Double;

    return-object v0
.end method

.method public getLocationType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->aCy:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadiusMeters()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->aCx:Ljava/lang/Integer;

    return-object v0
.end method

.method public pu()Lcom/google/android/gms/reminders/model/Location;
    .locals 0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/sk;->a(Lcom/google/android/gms/internal/sl;Landroid/os/Parcel;I)V

    return-void
.end method
