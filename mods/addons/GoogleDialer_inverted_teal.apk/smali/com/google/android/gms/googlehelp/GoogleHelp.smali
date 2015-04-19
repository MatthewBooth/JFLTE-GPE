.class public final Lcom/google/android/gms/googlehelp/GoogleHelp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/googlehelp/GoogleHelp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field alA:Z

.field alB:Ljava/lang/String;

.field alC:Ljava/lang/String;

.field alD:Landroid/net/Uri;

.field alE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field alF:I

.field alG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/OfflineSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field aln:Ljava/lang/String;

.field alo:Landroid/accounts/Account;

.field alp:Landroid/os/Bundle;

.field alq:Z

.field alr:Z

.field als:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field alt:Ljava/lang/String;

.field alu:Ljava/lang/String;

.field alv:Landroid/os/Bundle;

.field alw:Landroid/graphics/Bitmap;

.field alx:[B

.field aly:I

.field alz:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/googlehelp/a;

    invoke-direct {v0}, Lcom/google/android/gms/googlehelp/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/googlehelp/GoogleHelp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Bitmap;[BIIZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;ILjava/util/List;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/accounts/Account;
    .param p4    # Landroid/os/Bundle;
    .param p5    # Z
    .param p6    # Z
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # Landroid/os/Bundle;
    .param p11    # Landroid/graphics/Bitmap;
    .param p12    # [B
    .param p13    # I
    .param p14    # I
    .param p15    # Z
    .param p16    # Ljava/lang/String;
    .param p17    # Ljava/lang/String;
    .param p18    # Landroid/net/Uri;
    .param p20    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/graphics/Bitmap;",
            "[BIIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/OfflineSuggestion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->aln:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alo:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alp:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alq:Z

    iput-boolean p6, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alr:Z

    iput-object p7, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->als:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alt:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alu:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alv:Landroid/os/Bundle;

    iput-object p11, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alw:Landroid/graphics/Bitmap;

    iput-object p12, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alx:[B

    iput p13, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->aly:I

    iput p14, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alz:I

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alA:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alB:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alC:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alD:Landroid/net/Uri;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alE:Ljava/util/List;

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alF:I

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->alG:Ljava/util/List;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/googlehelp/a;->a(Lcom/google/android/gms/googlehelp/GoogleHelp;Landroid/os/Parcel;I)V

    return-void
.end method
