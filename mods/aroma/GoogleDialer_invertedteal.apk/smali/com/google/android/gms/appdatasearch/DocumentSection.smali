.class public Lcom/google/android/gms/appdatasearch/DocumentSection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/g;

.field private static final Ch:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

.field public static final INVALID_GLOBAL_SEARCH_SECTION_ID:I


# instance fields
.field final Ci:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

.field public final blobContent:[B

.field public final content:Ljava/lang/String;

.field public final globalSearchSectionType:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "-1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->INVALID_GLOBAL_SEARCH_SECTION_ID:I

    new-instance v0, Lcom/google/android/gms/appdatasearch/g;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->CREATOR:Lcom/google/android/gms/appdatasearch/g;

    new-instance v0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;

    const-string v1, "SsbContext"

    invoke-direct {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->noIndex(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;

    move-result-object v0

    const-string v1, "blob"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->format(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->build()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->Ch:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;I[B)V
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;
    .param p4    # I
    .param p5    # [B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->INVALID_GLOBAL_SEARCH_SECTION_ID:I

    if-eq p4, v0, :cond_0

    invoke-static {p4}, Lcom/google/android/gms/appdatasearch/GlobalSearchSections;->getSectionName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid section type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->content:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->Ci:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    iput p4, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->globalSearchSectionType:I

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->blobContent:[B

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/DocumentSection;->validate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->CREATOR:Lcom/google/android/gms/appdatasearch/g;

    const/4 v0, 0x0

    return v0
.end method

.method public validate()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->globalSearchSectionType:I

    sget v1, Lcom/google/android/gms/appdatasearch/DocumentSection;->INVALID_GLOBAL_SEARCH_SECTION_ID:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->globalSearchSectionType:I

    invoke-static {v0}, Lcom/google/android/gms/appdatasearch/GlobalSearchSections;->getSectionName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid section type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->globalSearchSectionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->content:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->blobContent:[B

    if-eqz v0, :cond_1

    const-string v0, "Both content and blobContent set"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->CREATOR:Lcom/google/android/gms/appdatasearch/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/g;->a(Lcom/google/android/gms/appdatasearch/DocumentSection;Landroid/os/Parcel;I)V

    return-void
.end method
