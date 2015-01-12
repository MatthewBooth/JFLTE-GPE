.class public Lcom/google/android/gms/appdatasearch/Section;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/af;


# instance fields
.field final mVersionCode:I

.field public final name:Ljava/lang/String;

.field public final snippetLength:I

.field public final snippeted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/af;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/af;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/Section;->CREATOR:Lcom/google/android/gms/appdatasearch/af;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZI)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/Section;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/Section;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/appdatasearch/Section;->snippeted:Z

    iput p4, p0, Lcom/google/android/gms/appdatasearch/Section;->snippetLength:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/Section;->CREATOR:Lcom/google/android/gms/appdatasearch/af;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/Section;->CREATOR:Lcom/google/android/gms/appdatasearch/af;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/af;->a(Lcom/google/android/gms/appdatasearch/Section;Landroid/os/Parcel;I)V

    return-void
.end method
