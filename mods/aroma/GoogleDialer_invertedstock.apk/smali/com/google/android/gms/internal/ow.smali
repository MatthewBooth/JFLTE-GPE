.class public final Lcom/google/android/gms/internal/ow;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ox;


# instance fields
.field final avm:Z

.field final avn:Z

.field final avo:Ljava/lang/String;

.field final avp:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ox;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ox;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ow;->CREATOR:Lcom/google/android/gms/internal/ox;

    return-void
.end method

.method constructor <init>(IZZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ow;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ow;->avm:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ow;->avn:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ow;->avo:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ow;->avp:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ow;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/n;->j(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "useOfflineDatabase"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ow;->avm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "useWebData"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ow;->avn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "endpoint"

    iget-object v2, p0, Lcom/google/android/gms/internal/ow;->avo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ox;->a(Lcom/google/android/gms/internal/ow;Landroid/os/Parcel;I)V

    return-void
.end method
