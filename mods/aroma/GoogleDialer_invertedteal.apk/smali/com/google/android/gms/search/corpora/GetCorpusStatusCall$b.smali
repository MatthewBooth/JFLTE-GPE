.class public Lcom/google/android/gms/search/corpora/GetCorpusStatusCall$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/search/corpora/GetCorpusStatusCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/corpora/e;


# instance fields
.field public corpusName:Ljava/lang/String;

.field final mVersionCode:I

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/corpora/e;

    invoke-direct {v0}, Lcom/google/android/gms/search/corpora/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/corpora/GetCorpusStatusCall$b;->CREATOR:Lcom/google/android/gms/search/corpora/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/corpora/GetCorpusStatusCall$b;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/corpora/GetCorpusStatusCall$b;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/search/corpora/GetCorpusStatusCall$b;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/search/corpora/GetCorpusStatusCall$b;->corpusName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/corpora/GetCorpusStatusCall$b;->CREATOR:Lcom/google/android/gms/search/corpora/e;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/search/corpora/GetCorpusStatusCall$b;->CREATOR:Lcom/google/android/gms/search/corpora/e;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/corpora/e;->a(Lcom/google/android/gms/search/corpora/GetCorpusStatusCall$b;Landroid/os/Parcel;I)V

    return-void
.end method
