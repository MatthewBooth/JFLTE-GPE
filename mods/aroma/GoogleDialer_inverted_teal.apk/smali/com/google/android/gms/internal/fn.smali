.class public final Lcom/google/android/gms/internal/fn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fo;


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final lD:Ljava/lang/String;

.field public final lG:Lcom/google/android/gms/internal/gy;

.field public final lK:Lcom/google/android/gms/internal/bd;

.field public final lV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final tA:Ljava/lang/String;

.field public final tB:Ljava/lang/String;

.field public final tC:Landroid/os/Bundle;

.field public final tD:I

.field public final tE:Landroid/os/Bundle;

.field public final tF:Z

.field public final tw:Landroid/os/Bundle;

.field public final tx:Lcom/google/android/gms/internal/ba;

.field public final ty:Landroid/content/pm/PackageInfo;

.field public final tz:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fn;->CREATOR:Lcom/google/android/gms/internal/fo;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/bd;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gy;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/ba;",
            "Lcom/google/android/gms/internal/bd;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gy;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fn;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fn;->tw:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/fn;->tx:Lcom/google/android/gms/internal/ba;

    iput-object p4, p0, Lcom/google/android/gms/internal/fn;->lK:Lcom/google/android/gms/internal/bd;

    iput-object p5, p0, Lcom/google/android/gms/internal/fn;->lD:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/fn;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/fn;->ty:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/google/android/gms/internal/fn;->tz:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/fn;->tA:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/fn;->tB:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/fn;->lG:Lcom/google/android/gms/internal/gy;

    iput-object p12, p0, Lcom/google/android/gms/internal/fn;->tC:Landroid/os/Bundle;

    iput p13, p0, Lcom/google/android/gms/internal/fn;->tD:I

    iput-object p14, p0, Lcom/google/android/gms/internal/fn;->lV:Ljava/util/List;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/fn;->tE:Landroid/os/Bundle;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fn;->tF:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fo;->a(Lcom/google/android/gms/internal/fn;Landroid/os/Parcel;I)V

    return-void
.end method
