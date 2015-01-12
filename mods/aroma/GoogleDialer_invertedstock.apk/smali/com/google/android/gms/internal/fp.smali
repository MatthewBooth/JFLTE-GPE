.class public final Lcom/google/android/gms/internal/fp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fq;


# instance fields
.field public final errorCode:I

.field public final orientation:I

.field public final qg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final qh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final qk:J

.field public final rP:Ljava/lang/String;

.field public final tF:Z

.field public final tG:Ljava/lang/String;

.field public final tH:J

.field public final tI:Z

.field public final tJ:J

.field public final tK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final tL:Ljava/lang/String;

.field public final tM:J

.field public final tN:Ljava/lang/String;

.field public final tO:Z

.field public final tP:Ljava/lang/String;

.field public final tQ:Ljava/lang/String;

.field public final tR:Z

.field public final tS:Z

.field public final tT:Z

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fp;->CREATOR:Lcom/google/android/gms/internal/fq;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fp;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fp;->rP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fp;->tG:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/fp;->qg:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/internal/fp;->errorCode:I

    if-eqz p6, :cond_1

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/fp;->qh:Ljava/util/List;

    iput-wide p7, p0, Lcom/google/android/gms/internal/fp;->tH:J

    iput-boolean p9, p0, Lcom/google/android/gms/internal/fp;->tI:Z

    iput-wide p10, p0, Lcom/google/android/gms/internal/fp;->tJ:J

    if-eqz p12, :cond_2

    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/fp;->tK:Ljava/util/List;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/internal/fp;->qk:J

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/fp;->orientation:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/fp;->tL:Ljava/lang/String;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/fp;->tM:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/fp;->tN:Ljava/lang/String;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fp;->tO:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/fp;->tP:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/internal/fp;->tQ:Ljava/lang/String;

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fp;->tR:Z

    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fp;->tS:Z

    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fp;->tF:Z

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fp;->tT:Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/internal/fp;Landroid/os/Parcel;I)V

    return-void
.end method
