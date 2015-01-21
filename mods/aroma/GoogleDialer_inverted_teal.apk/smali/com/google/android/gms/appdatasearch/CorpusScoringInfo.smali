.class public Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/b;


# instance fields
.field public final corpus:Lcom/google/android/gms/appdatasearch/CorpusId;

.field final mVersionCode:I

.field public final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/b;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/b;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/appdatasearch/CorpusId;I)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/appdatasearch/CorpusId;
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->corpus:Lcom/google/android/gms/appdatasearch/CorpusId;

    iput p3, p0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->weight:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/b;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/b;->a(Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;Landroid/os/Parcel;I)V

    return-void
.end method
