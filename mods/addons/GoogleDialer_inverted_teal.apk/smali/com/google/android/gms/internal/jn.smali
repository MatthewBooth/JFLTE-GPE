.class public Lcom/google/android/gms/internal/jn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jo;


# instance fields
.field public final QV:Ljava/lang/String;

.field public final QW:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/jo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jn;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jn;->QV:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/jn;->QW:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jo;->a(Lcom/google/android/gms/internal/jn;Landroid/os/Parcel;I)V

    return-void
.end method
