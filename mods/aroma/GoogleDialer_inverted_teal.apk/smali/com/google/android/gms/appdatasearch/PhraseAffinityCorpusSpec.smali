.class public Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/t;


# instance fields
.field final CL:Landroid/os/Bundle;

.field public final corpus:Lcom/google/android/gms/appdatasearch/CorpusId;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/t;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->CREATOR:Lcom/google/android/gms/appdatasearch/t;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/appdatasearch/CorpusId;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/appdatasearch/CorpusId;
    .param p3    # Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->corpus:Lcom/google/android/gms/appdatasearch/CorpusId;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->CL:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->CREATOR:Lcom/google/android/gms/appdatasearch/t;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->CREATOR:Lcom/google/android/gms/appdatasearch/t;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/t;->a(Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;Landroid/os/Parcel;I)V

    return-void
.end method
