.class public Lcom/google/android/gms/drive/query/internal/Operator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/Operator;",
            ">;"
        }
    .end annotation
.end field

.field public static final WA:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final WB:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final WC:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final WD:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Wv:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Ww:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Wx:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Wy:Lcom/google/android/gms/drive/query/internal/Operator;

.field public static final Wz:Lcom/google/android/gms/drive/query/internal/Operator;


# instance fields
.field final mTag:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/l;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Wv:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "<"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Ww:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "<="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Wx:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, ">"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Wy:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, ">="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Wz:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "and"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->WA:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "or"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->WB:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "not"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->WC:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;

    const-string v1, "contains"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->WD:Lcom/google/android/gms/drive/query/internal/Operator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/drive/query/internal/Operator;

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/l;->a(Lcom/google/android/gms/drive/query/internal/Operator;Landroid/os/Parcel;I)V

    return-void
.end method
