.class public Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/GetRecentContextCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/i;


# instance fields
.field public final filterAccount:Landroid/accounts/Account;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/i;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->CREATOR:Lcom/google/android/gms/appdatasearch/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;-><init>(Landroid/accounts/Account;)V

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->filterAccount:Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;)V
    .locals 1
    .param p1    # Landroid/accounts/Account;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;-><init>(ILandroid/accounts/Account;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->CREATOR:Lcom/google/android/gms/appdatasearch/i;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->CREATOR:Lcom/google/android/gms/appdatasearch/i;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/i;->a(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Landroid/os/Parcel;I)V

    return-void
.end method
