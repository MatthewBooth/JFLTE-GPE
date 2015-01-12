.class public final Lcom/google/android/gms/internal/wh;
.super Ljava/lang/Object;


# static fields
.field public static final aPA:[I

.field public static final aPB:[J

.field public static final aPC:[F

.field public static final aPD:[D

.field public static final aPE:[Z

.field public static final aPF:[Ljava/lang/String;

.field public static final aPG:[[B

.field public static final aPH:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/wh;->aPA:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/wh;->aPB:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/wh;->aPC:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/wh;->aPD:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/wh;->aPE:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/wh;->aPF:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/wh;->aPG:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/wh;->aPH:[B

    return-void
.end method

.method static C(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static kQ(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
