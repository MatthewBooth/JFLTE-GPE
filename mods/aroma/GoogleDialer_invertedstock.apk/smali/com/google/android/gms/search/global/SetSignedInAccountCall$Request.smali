.class public Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/search/global/SetSignedInAccountCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/global/k;


# instance fields
.field public accountName:Ljava/lang/String;

.field public appInstanceId:Ljava/lang/String;

.field public flags:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/global/k;

    invoke-direct {v0}, Lcom/google/android/gms/search/global/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->CREATOR:Lcom/google/android/gms/search/global/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->appInstanceId:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->flags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->CREATOR:Lcom/google/android/gms/search/global/k;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;->CREATOR:Lcom/google/android/gms/search/global/k;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/global/k;->a(Lcom/google/android/gms/search/global/SetSignedInAccountCall$Request;Landroid/os/Parcel;I)V

    return-void
.end method
