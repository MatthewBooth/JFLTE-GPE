.class public Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/a;


# instance fields
.field GF:Landroid/os/Bundle;

.field accountName:Ljava/lang/String;

.field callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/delegate/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->version:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->GF:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p4    # Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->callingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;->GF:Landroid/os/Bundle;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/delegate/a;->a(Lcom/google/android/gms/auth/firstparty/delegate/ConfirmCredentialsWorkflowRequest;Landroid/os/Parcel;I)V

    return-void
.end method
