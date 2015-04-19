.class public Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/search/corpora/GetCorpusInfoCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/corpora/d;


# instance fields
.field public info:Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

.field final mVersionCode:I

.field public status:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/corpora/d;

    invoke-direct {v0}, Lcom/google/android/gms/search/corpora/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->CREATOR:Lcom/google/android/gms/search/corpora/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/common/api/Status;
    .param p3    # Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->status:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->info:Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->CREATOR:Lcom/google/android/gms/search/corpora/d;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->CREATOR:Lcom/google/android/gms/search/corpora/d;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/corpora/d;->a(Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;Landroid/os/Parcel;I)V

    return-void
.end method
