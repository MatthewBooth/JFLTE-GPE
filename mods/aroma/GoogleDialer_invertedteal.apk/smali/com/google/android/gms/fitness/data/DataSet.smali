.class public final Lcom/google/android/gms/fitness/data/DataSet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ZQ:Lcom/google/android/gms/fitness/data/DataType;

.field private final ZR:Lcom/google/android/gms/fitness/data/DataSource;

.field private aae:Z

.field private final aal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final aam:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/e;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Ljava/util/List;Ljava/util/List;Z)V
    .locals 5
    .param p1    # I
    .param p2    # Lcom/google/android/gms/fitness/data/DataSource;
    .param p3    # Lcom/google/android/gms/fitness/data/DataType;
    .param p6    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/RawDataPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->aae:Z

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataSet;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataSet;->ZR:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p3, p0, Lcom/google/android/gms/fitness/data/DataSet;->ZQ:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p6, p0, Lcom/google/android/gms/fitness/data/DataSet;->aae:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->aal:Ljava/util/List;

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/google/android/gms/fitness/data/DataSet;->aam:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/RawDataPoint;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->aal:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/fitness/data/DataPoint;

    iget-object v4, p0, Lcom/google/android/gms/fitness/data/DataSet;->aam:Ljava/util/List;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(Ljava/util/List;Lcom/google/android/gms/fitness/data/RawDataPoint;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/RawDataSet;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1    # Lcom/google/android/gms/fitness/data/RawDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/RawDataSet;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x3

    iget v0, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->aaI:I

    invoke-static {p2, v0}, Lcom/google/android/gms/fitness/data/DataSet;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSource;

    iget v0, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->aaK:I

    invoke-static {p3, v0}, Lcom/google/android/gms/fitness/data/DataSet;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataType;

    iget-object v4, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->aaL:Ljava/util/List;

    iget-boolean v6, p1, Lcom/google/android/gms/fitness/data/RawDataSet;->aae:Z

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/fitness/data/DataSet;-><init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataSet;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->ZQ:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSet;->ZQ:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->ZR:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSet;->ZR:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->aal:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSet;->aal:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->aae:Z

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/data/DataSet;->aae:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/DataSet;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->ZR:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->ZQ:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->mVersionCode:I

    return v0
.end method

.method h(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/RawDataPoint;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->aal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->aal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    new-instance v3, Lcom/google/android/gms/fitness/data/RawDataPoint;

    invoke-direct {v3, v0, p1}, Lcom/google/android/gms/fitness/data/RawDataPoint;-><init>(Lcom/google/android/gms/fitness/data/DataPoint;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->ZQ:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSet;->ZR:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method jo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/RawDataPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->aam:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/DataSet;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method jp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->aam:Ljava/util/List;

    return-object v0
.end method

.method public serverHasMoreData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSet;->aae:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSet;->jo()Ljava/util/List;

    move-result-object v0

    const-string v1, "DataSet{%s %s}"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataSet;->ZR:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataSet;->aal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    :goto_0
    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, "%d data points, first 5: %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/fitness/data/DataSet;->aal:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x5

    invoke-interface {v0, v6, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/e;->a(Lcom/google/android/gms/fitness/data/DataSet;Landroid/os/Parcel;I)V

    return-void
.end method
