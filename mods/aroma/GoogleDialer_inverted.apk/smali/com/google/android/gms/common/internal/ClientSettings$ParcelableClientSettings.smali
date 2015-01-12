.class public final Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/ClientSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelableClientSettings"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/internal/ParcelableClientSettingsCreator;


# instance fields
.field private final Et:Ljava/lang/String;

.field private final MT:I

.field private final MV:Ljava/lang/String;

.field private final Nt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/ParcelableClientSettingsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/ParcelableClientSettingsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->CREATOR:Lcom/google/android/gms/common/internal/ParcelableClientSettingsCreator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->Nt:Ljava/util/List;

    iput p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->Et:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->Nt:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p4, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->MT:I

    iput-object p5, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->MV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->Et:Ljava/lang/String;

    return-object v0
.end method

.method public getGravityForPopups()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->MT:I

    return v0
.end method

.method public getRealClientPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->MV:Ljava/lang/String;

    return-object v0
.end method

.method public getScopes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->Nt:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/ParcelableClientSettingsCreator;->a(Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;Landroid/os/Parcel;I)V

    return-void
.end method
