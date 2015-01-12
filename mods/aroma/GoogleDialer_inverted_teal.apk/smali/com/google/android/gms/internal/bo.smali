.class public final Lcom/google/android/gms/internal/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bp;


# instance fields
.field public final backgroundColor:I

.field public final oJ:I

.field public final oK:I

.field public final oL:I

.field public final oM:I

.field public final oN:I

.field public final oO:I

.field public final oP:I

.field public final oQ:Ljava/lang/String;

.field public final oR:I

.field public final oS:Ljava/lang/String;

.field public final oT:I

.field public final oU:I

.field public final query:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bo;->CREATOR:Lcom/google/android/gms/internal/bp;

    return-void
.end method

.method constructor <init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bo;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/bo;->oJ:I

    iput p3, p0, Lcom/google/android/gms/internal/bo;->backgroundColor:I

    iput p4, p0, Lcom/google/android/gms/internal/bo;->oK:I

    iput p5, p0, Lcom/google/android/gms/internal/bo;->oL:I

    iput p6, p0, Lcom/google/android/gms/internal/bo;->oM:I

    iput p7, p0, Lcom/google/android/gms/internal/bo;->oN:I

    iput p8, p0, Lcom/google/android/gms/internal/bo;->oO:I

    iput p9, p0, Lcom/google/android/gms/internal/bo;->oP:I

    iput-object p10, p0, Lcom/google/android/gms/internal/bo;->oQ:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/bo;->oR:I

    iput-object p12, p0, Lcom/google/android/gms/internal/bo;->oS:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/internal/bo;->oT:I

    iput p14, p0, Lcom/google/android/gms/internal/bo;->oU:I

    iput-object p15, p0, Lcom/google/android/gms/internal/bo;->query:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bo;Landroid/os/Parcel;I)V

    return-void
.end method
