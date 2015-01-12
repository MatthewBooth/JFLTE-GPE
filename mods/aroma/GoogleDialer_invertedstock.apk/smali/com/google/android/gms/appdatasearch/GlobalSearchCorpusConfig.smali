.class public Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/o;


# instance fields
.field public final features:[Lcom/google/android/gms/appdatasearch/Feature;

.field public final globalSearchSectionMappings:[I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/o;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->CREATOR:Lcom/google/android/gms/appdatasearch/o;

    return-void
.end method

.method constructor <init>(I[I[Lcom/google/android/gms/appdatasearch/Feature;)V
    .locals 0
    .param p1    # I
    .param p2    # [I
    .param p3    # [Lcom/google/android/gms/appdatasearch/Feature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->globalSearchSectionMappings:[I

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->features:[Lcom/google/android/gms/appdatasearch/Feature;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->CREATOR:Lcom/google/android/gms/appdatasearch/o;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->CREATOR:Lcom/google/android/gms/appdatasearch/o;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/o;->a(Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;Landroid/os/Parcel;I)V

    return-void
.end method
