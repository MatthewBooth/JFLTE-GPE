.class public Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/u;


# instance fields
.field final CN:[Lcom/google/android/gms/appdatasearch/CorpusId;

.field final CO:[I

.field final mErrorMessage:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/u;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/u;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Lcom/google/android/gms/appdatasearch/CorpusId;[I)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # [Lcom/google/android/gms/appdatasearch/CorpusId;
    .param p4    # [I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->mErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->CN:[Lcom/google/android/gms/appdatasearch/CorpusId;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->CO:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/u;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/u;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/u;->a(Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;Landroid/os/Parcel;I)V

    return-void
.end method
