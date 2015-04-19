.class public Lcom/google/android/gms/people/model/AccountMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/model/a;


# instance fields
.field public isPagePeriodicSyncEnabled:Z

.field public isPageTickleSyncEnabled:Z

.field public isPlusEnabled:Z

.field public isSyncEnabled:Z

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/model/a;

    invoke-direct {v0}, Lcom/google/android/gms/people/model/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/model/AccountMetadata;->CREATOR:Lcom/google/android/gms/people/model/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/people/model/AccountMetadata;->mVersionCode:I

    return-void
.end method

.method constructor <init>(IZZZZ)V
    .locals 0
    .param p1    # I
    .param p2    # Z
    .param p3    # Z
    .param p4    # Z
    .param p5    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/people/model/AccountMetadata;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/people/model/AccountMetadata;->isPlusEnabled:Z

    iput-boolean p3, p0, Lcom/google/android/gms/people/model/AccountMetadata;->isSyncEnabled:Z

    iput-boolean p4, p0, Lcom/google/android/gms/people/model/AccountMetadata;->isPagePeriodicSyncEnabled:Z

    iput-boolean p5, p0, Lcom/google/android/gms/people/model/AccountMetadata;->isPageTickleSyncEnabled:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/model/a;->a(Lcom/google/android/gms/people/model/AccountMetadata;Landroid/os/Parcel;I)V

    return-void
.end method
