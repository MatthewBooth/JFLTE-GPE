.class public Lcom/google/android/gms/appdatasearch/QuerySpecification;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/w;


# instance fields
.field public final debugLevel:I

.field final mVersionCode:I

.field public final prefixMatch:Z

.field public final queryTokenizer:I

.field public final rankingStrategy:I

.field public final semanticSectionNames:Z

.field public final wantUris:Z

.field public final wantedSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appdatasearch/Section;",
            ">;"
        }
    .end annotation
.end field

.field public final wantedTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/w;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/w;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;Ljava/util/List;ZIIZI)V
    .locals 0
    .param p1    # I
    .param p2    # Z
    .param p5    # Z
    .param p6    # I
    .param p7    # I
    .param p8    # Z
    .param p9    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appdatasearch/Section;",
            ">;ZIIZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->wantUris:Z

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->wantedTags:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->wantedSections:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->prefixMatch:Z

    iput p6, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->debugLevel:I

    iput p7, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->rankingStrategy:I

    iput-boolean p8, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->semanticSectionNames:Z

    iput p9, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->queryTokenizer:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/w;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/w;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/w;->a(Lcom/google/android/gms/appdatasearch/QuerySpecification;Landroid/os/Parcel;I)V

    return-void
.end method
