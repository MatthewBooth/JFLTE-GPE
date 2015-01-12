.class public Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/x;


# instance fields
.field final mVersionCode:I

.field public final sectionNames:[Ljava/lang/String;

.field public final sourceClass:I

.field public final toAddressesSectionName:Ljava/lang/String;

.field public final userInputSectionName:Ljava/lang/String;

.field public final userInputSectionValues:[Ljava/lang/String;

.field public final userInputTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/x;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/x;

    return-void
.end method

.method constructor <init>(II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # [Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # [Ljava/lang/String;
    .param p7    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->sourceClass:I

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->sectionNames:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->userInputTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->userInputSectionName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->userInputSectionValues:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->toAddressesSectionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/x;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/x;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/x;->a(Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;Landroid/os/Parcel;I)V

    return-void
.end method
