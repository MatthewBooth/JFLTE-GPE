.class public Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/v;


# instance fields
.field final CP:[Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/v;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/v;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;)V
    .locals 0
    .param p1    # I
    .param p2    # [Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;->CP:[Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/v;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/v;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/v;->a(Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;Landroid/os/Parcel;I)V

    return-void
.end method
