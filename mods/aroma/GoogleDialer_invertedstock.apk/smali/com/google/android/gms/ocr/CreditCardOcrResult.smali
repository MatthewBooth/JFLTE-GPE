.class public final Lcom/google/android/gms/ocr/CreditCardOcrResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/ocr/CreditCardOcrResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aua:Ljava/lang/String;

.field aub:I

.field auc:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ocr/a;

    invoke-direct {v0}, Lcom/google/android/gms/ocr/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/ocr/CreditCardOcrResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ocr/CreditCardOcrResult;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ocr/CreditCardOcrResult;->aua:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/ocr/CreditCardOcrResult;->aub:I

    iput p4, p0, Lcom/google/android/gms/ocr/CreditCardOcrResult;->auc:I

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

    iget v0, p0, Lcom/google/android/gms/ocr/CreditCardOcrResult;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ocr/a;->a(Lcom/google/android/gms/ocr/CreditCardOcrResult;Landroid/os/Parcel;I)V

    return-void
.end method
