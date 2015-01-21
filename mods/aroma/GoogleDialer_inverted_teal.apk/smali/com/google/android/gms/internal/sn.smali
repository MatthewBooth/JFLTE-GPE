.class public Lcom/google/android/gms/internal/sn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/Task;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/sn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Sx:Ljava/lang/String;

.field private final aCA:Lcom/google/android/gms/internal/sp;

.field private final aCB:Lcom/google/android/gms/internal/sr;

.field private final aCC:Ljava/lang/Long;

.field private final aCD:Ljava/lang/Long;

.field private final aCE:Ljava/lang/Boolean;

.field private final aCF:Ljava/lang/Boolean;

.field private final aCG:Ljava/lang/Boolean;

.field private final aCH:Ljava/lang/Boolean;

.field private final aCI:Ljava/lang/Long;

.field private final aCJ:Lcom/google/android/gms/internal/sj;

.field private final aCK:Lcom/google/android/gms/internal/sj;

.field private final aCL:Lcom/google/android/gms/internal/sl;

.field private final aCM:Ljava/lang/Long;

.field public final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/sm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/sn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/sp;Lcom/google/android/gms/internal/sr;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/internal/sj;Lcom/google/android/gms/internal/sj;Lcom/google/android/gms/internal/sl;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sn;->aCA:Lcom/google/android/gms/internal/sp;

    iput-object p3, p0, Lcom/google/android/gms/internal/sn;->aCB:Lcom/google/android/gms/internal/sr;

    iput-object p4, p0, Lcom/google/android/gms/internal/sn;->Sx:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/sn;->aCC:Ljava/lang/Long;

    iput-object p6, p0, Lcom/google/android/gms/internal/sn;->aCD:Ljava/lang/Long;

    iput-object p7, p0, Lcom/google/android/gms/internal/sn;->aCE:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/google/android/gms/internal/sn;->aCF:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/google/android/gms/internal/sn;->aCG:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/google/android/gms/internal/sn;->aCH:Ljava/lang/Boolean;

    iput-object p11, p0, Lcom/google/android/gms/internal/sn;->aCI:Ljava/lang/Long;

    iput-object p12, p0, Lcom/google/android/gms/internal/sn;->aCJ:Lcom/google/android/gms/internal/sj;

    iput-object p13, p0, Lcom/google/android/gms/internal/sn;->aCK:Lcom/google/android/gms/internal/sj;

    iput-object p14, p0, Lcom/google/android/gms/internal/sn;->aCL:Lcom/google/android/gms/internal/sl;

    iput-object p15, p0, Lcom/google/android/gms/internal/sn;->aCM:Ljava/lang/Long;

    iput p1, p0, Lcom/google/android/gms/internal/sn;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/reminders/model/TaskId;Lcom/google/android/gms/reminders/model/TaskList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/Location;Ljava/lang/Long;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/sn;->aCA:Lcom/google/android/gms/internal/sp;

    if-nez p3, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/sn;->aCB:Lcom/google/android/gms/internal/sr;

    iput-object p4, p0, Lcom/google/android/gms/internal/sn;->Sx:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/sn;->aCC:Ljava/lang/Long;

    iput-object p6, p0, Lcom/google/android/gms/internal/sn;->aCD:Ljava/lang/Long;

    iput-object p7, p0, Lcom/google/android/gms/internal/sn;->aCE:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/google/android/gms/internal/sn;->aCF:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/google/android/gms/internal/sn;->aCG:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/google/android/gms/internal/sn;->aCH:Ljava/lang/Boolean;

    iput-object p11, p0, Lcom/google/android/gms/internal/sn;->aCI:Ljava/lang/Long;

    if-nez p12, :cond_2

    const/4 v1, 0x0

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/sn;->aCJ:Lcom/google/android/gms/internal/sj;

    if-nez p13, :cond_3

    const/4 v1, 0x0

    :goto_3
    iput-object v1, p0, Lcom/google/android/gms/internal/sn;->aCK:Lcom/google/android/gms/internal/sj;

    if-nez p14, :cond_4

    const/4 v1, 0x0

    :goto_4
    iput-object v1, p0, Lcom/google/android/gms/internal/sn;->aCL:Lcom/google/android/gms/internal/sl;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/sn;->aCM:Ljava/lang/Long;

    iput p1, p0, Lcom/google/android/gms/internal/sn;->mVersionCode:I

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/sp;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/sp;-><init>(Lcom/google/android/gms/reminders/model/TaskId;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/sr;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/sr;-><init>(Lcom/google/android/gms/reminders/model/TaskList;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/sj;

    invoke-direct {v1, p12}, Lcom/google/android/gms/internal/sj;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/sj;

    invoke-direct {v1, p13}, Lcom/google/android/gms/internal/sj;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/sl;

    move-object/from16 v0, p14

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/sl;-><init>(Lcom/google/android/gms/reminders/model/Location;)V

    goto :goto_4
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Task;)V
    .locals 16

    const/4 v1, 0x1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Lcom/google/android/gms/reminders/model/TaskList;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getArchivedTimeMs()Ljava/lang/Long;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getPinned()Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getSnoozed()Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getSnoozedTimeMillis()Ljava/lang/Long;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getEventDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getLocationSnoozedUntilMs()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/sn;-><init>(ILcom/google/android/gms/reminders/model/TaskId;Lcom/google/android/gms/reminders/model/TaskList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/Location;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sn;->ps()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    return-object v0
.end method

.method public getArchived()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getArchivedTimeMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCD:Ljava/lang/Long;

    return-object v0
.end method

.method public getCreatedTimeMillis()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCC:Ljava/lang/Long;

    return-object v0
.end method

.method public getDeleted()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCF:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDueDate()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCJ:Lcom/google/android/gms/internal/sj;

    return-object v0
.end method

.method public getEventDate()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCK:Lcom/google/android/gms/internal/sj;

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/reminders/model/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCL:Lcom/google/android/gms/internal/sl;

    return-object v0
.end method

.method public getLocationSnoozedUntilMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCM:Ljava/lang/Long;

    return-object v0
.end method

.method public getPinned()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCG:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSnoozed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCH:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSnoozedTimeMillis()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCI:Ljava/lang/Long;

    return-object v0
.end method

.method public getTaskId()Lcom/google/android/gms/reminders/model/TaskId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCA:Lcom/google/android/gms/internal/sp;

    return-object v0
.end method

.method public getTaskList()Lcom/google/android/gms/reminders/model/TaskList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->aCB:Lcom/google/android/gms/internal/sr;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->Sx:Ljava/lang/String;

    return-object v0
.end method

.method public ps()Lcom/google/android/gms/reminders/model/Task;
    .locals 0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/sm;->a(Lcom/google/android/gms/internal/sn;Landroid/os/Parcel;I)V

    return-void
.end method
