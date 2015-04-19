.class public final Lcom/google/android/gms/internal/jr$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jt;


# instance fields
.field final Rb:Ljava/lang/String;

.field final Rc:I

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/jt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jr$a;->CREATOR:Lcom/google/android/gms/internal/jt;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jr$a;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jr$a;->Rb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/jr$a;->Rc:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jr$a;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/jr$a;->Rb:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/jr$a;->Rc:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/jr$a;->CREATOR:Lcom/google/android/gms/internal/jt;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/internal/jr$a;->CREATOR:Lcom/google/android/gms/internal/jt;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jt;->a(Lcom/google/android/gms/internal/jr$a;Landroid/os/Parcel;I)V

    return-void
.end method
