.class public final Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private Dd:Ljava/lang/String;

.field private De:Z

.field private Df:I

.field private Dg:Z

.field private Dh:Ljava/lang/String;

.field private final Di:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appdatasearch/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private Dj:Ljava/util/BitSet;

.field private Dk:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Df:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Di:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;
    .locals 10

    const/4 v1, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Dj:Ljava/util/BitSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Dj:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    new-array v8, v0, [I

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Dj:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    aput v0, v8, v1

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Dj:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Dd:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->De:Z

    iget v4, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Df:I

    iget-boolean v5, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Dg:Z

    iget-object v6, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Dh:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Di:Ljava/util/List;

    iget-object v9, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Di:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/android/gms/appdatasearch/Feature;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/gms/appdatasearch/Feature;

    iget-object v9, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Dk:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/appdatasearch/Feature;[ILjava/lang/String;)V

    return-object v0
.end method

.method public format(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->Dd:Ljava/lang/String;

    return-object p0
.end method

.method public noIndex(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$Builder;->De:Z

    return-object p0
.end method
