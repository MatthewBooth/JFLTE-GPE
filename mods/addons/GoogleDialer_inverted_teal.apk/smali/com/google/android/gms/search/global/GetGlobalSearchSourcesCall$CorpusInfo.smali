.class public Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CorpusInfo"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/global/c;


# instance fields
.field public corpusName:Ljava/lang/String;

.field public features:[Lcom/google/android/gms/appdatasearch/Feature;

.field public isAppHistoryCorpus:Z

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/global/c;

    invoke-direct {v0}, Lcom/google/android/gms/search/global/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;->CREATOR:Lcom/google/android/gms/search/global/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Lcom/google/android/gms/appdatasearch/Feature;Z)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # [Lcom/google/android/gms/appdatasearch/Feature;
    .param p4    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;->corpusName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;->features:[Lcom/google/android/gms/appdatasearch/Feature;

    iput-boolean p4, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;->isAppHistoryCorpus:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;->CREATOR:Lcom/google/android/gms/search/global/c;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;->CREATOR:Lcom/google/android/gms/search/global/c;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/global/c;->a(Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;Landroid/os/Parcel;I)V

    return-void
.end method
