.class public Lcom/google/android/gms/appdatasearch/GlobalSearchApplication;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/m;


# instance fields
.field final Cm:[Lcom/google/android/gms/appdatasearch/k;

.field public final appInfo:Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;

.field public final enabled:Z

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/m;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplication;->CREATOR:Lcom/google/android/gms/appdatasearch/m;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;[Lcom/google/android/gms/appdatasearch/k;Z)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;
    .param p3    # [Lcom/google/android/gms/appdatasearch/k;
    .param p4    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplication;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplication;->appInfo:Lcom/google/android/gms/appdatasearch/GlobalSearchApplicationInfo;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplication;->Cm:[Lcom/google/android/gms/appdatasearch/k;

    iput-boolean p4, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplication;->enabled:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplication;->CREATOR:Lcom/google/android/gms/appdatasearch/m;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchApplication;->CREATOR:Lcom/google/android/gms/appdatasearch/m;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/m;->a(Lcom/google/android/gms/appdatasearch/GlobalSearchApplication;Landroid/os/Parcel;I)V

    return-void
.end method
