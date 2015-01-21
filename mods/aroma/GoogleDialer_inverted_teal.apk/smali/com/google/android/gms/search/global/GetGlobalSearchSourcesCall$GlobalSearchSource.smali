.class public Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalSearchSource"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/global/d;


# instance fields
.field public corpora:[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;

.field public defaultIntentAction:Ljava/lang/String;

.field public defaultIntentActivity:Ljava/lang/String;

.field public defaultIntentData:Ljava/lang/String;

.field public enabled:Z

.field public iconId:I

.field public labelId:I

.field final mVersionCode:I

.field public packageName:Ljava/lang/String;

.field public settingsDescriptionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/global/d;

    invoke-direct {v0}, Lcom/google/android/gms/search/global/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->CREATOR:Lcom/google/android/gms/search/global/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;Z)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # [Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;
    .param p10    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->labelId:I

    iput p4, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->settingsDescriptionId:I

    iput p5, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->iconId:I

    iput-object p6, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->defaultIntentAction:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->defaultIntentData:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->defaultIntentActivity:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->corpora:[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;

    iput-boolean p10, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->enabled:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->CREATOR:Lcom/google/android/gms/search/global/d;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->CREATOR:Lcom/google/android/gms/search/global/d;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/global/d;->a(Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;Landroid/os/Parcel;I)V

    return-void
.end method
