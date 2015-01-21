.class public Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ac;


# instance fields
.field public final password:Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;

.field public final pin:Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;

.field public final status:I

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ac;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ac;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ac;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;
    .param p4    # Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->version:I

    iput p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->status:I

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->password:Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->pin:Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ac;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;Landroid/os/Parcel;I)V

    return-void
.end method
