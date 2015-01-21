.class public Lcom/google/android/gms/reminders/model/DateTime$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aCU:Lcom/google/android/gms/reminders/model/Time;

.field private aCp:Ljava/lang/Integer;

.field private aCq:Ljava/lang/Integer;

.field private aCr:Ljava/lang/Integer;

.field private aCt:Ljava/lang/Integer;

.field private aCu:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/sj;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCp:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCq:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCr:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCU:Lcom/google/android/gms/reminders/model/Time;

    iget-object v5, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCt:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCu:Ljava/lang/Long;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/sj;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-object v0
.end method

.method public setAbsoluteTimeMs(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCu:Ljava/lang/Long;

    return-object p0
.end method

.method public setDay(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCr:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMonth(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCq:Ljava/lang/Integer;

    return-object p0
.end method

.method public setPeriod(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCt:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTime(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 1
    .param p1    # Lcom/google/android/gms/reminders/model/Time;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Time;

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCU:Lcom/google/android/gms/reminders/model/Time;

    :cond_0
    return-object p0
.end method

.method public setYear(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->aCp:Ljava/lang/Integer;

    return-object p0
.end method
