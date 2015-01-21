.class public Lcom/google/android/gms/location/copresence/OptInParams;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/copresence/OptInParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Cb:Ljava/lang/String;

.field private final anO:I

.field private final anP:I

.field private final anQ:I

.field private final anR:I

.field private final anS:Ljava/lang/String;

.field private final anT:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/copresence/k;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/copresence/OptInParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/copresence/OptInParams;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/copresence/OptInParams;->Cb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anO:I

    iput p4, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anP:I

    iput p5, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anQ:I

    iput p6, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anR:I

    iput-object p7, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anS:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppDetailResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anP:I

    return v0
.end method

.method public getAppTitleResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anO:I

    return v0
.end method

.method public getFeatureId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anT:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroImageResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anQ:I

    return v0
.end method

.method public getIntroLabelResId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anR:I

    return v0
.end method

.method public getNamedAclName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->anS:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->Cb:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/copresence/k;->a(Lcom/google/android/gms/location/copresence/OptInParams;Landroid/os/Parcel;I)V

    return-void
.end method
