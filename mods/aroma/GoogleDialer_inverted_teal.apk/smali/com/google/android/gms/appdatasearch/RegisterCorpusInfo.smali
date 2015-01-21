.class public Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/y;


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final contentProviderUri:Landroid/net/Uri;

.field public final globalSearchConfig:Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;

.field public final imeConfig:Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;

.field final mVersionCode:I

.field public final name:Ljava/lang/String;

.field public final schemaOrgType:Ljava/lang/String;

.field public final sections:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

.field public final trimmable:Z

.field public final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/y;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/y;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/y;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;ZLandroid/accounts/Account;Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->version:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->contentProviderUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->sections:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->globalSearchConfig:Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;

    iput-boolean p7, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->trimmable:Z

    iput-object p8, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->account:Landroid/accounts/Account;

    iput-object p9, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->imeConfig:Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;

    iput-object p10, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->schemaOrgType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/y;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->contentProviderUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->contentProviderUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->sections:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    iget-object v2, p1, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->sections:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/y;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/y;->a(Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;Landroid/os/Parcel;I)V

    return-void
.end method
