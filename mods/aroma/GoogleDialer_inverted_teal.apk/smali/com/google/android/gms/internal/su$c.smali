.class public Lcom/google/android/gms/internal/su$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/su;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/sx;


# instance fields
.field public aDg:[Lcom/google/android/gms/internal/su$a;

.field public aDh:J

.field public aDi:J

.field public aDj:J

.field final mVersionCode:I

.field public status:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/sx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/su$c;->CREATOR:Lcom/google/android/gms/internal/sx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/su$c;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/internal/su$a;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/su$c;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/su$c;->status:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/internal/su$c;->aDg:[Lcom/google/android/gms/internal/su$a;

    iput-wide p4, p0, Lcom/google/android/gms/internal/su$c;->aDh:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/su$c;->aDi:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/su$c;->aDj:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/su$c;->CREATOR:Lcom/google/android/gms/internal/sx;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/internal/su$c;->CREATOR:Lcom/google/android/gms/internal/sx;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/sx;->a(Lcom/google/android/gms/internal/su$c;Landroid/os/Parcel;I)V

    return-void
.end method
