.class public Lcom/google/android/gms/reminders/model/Time$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aCR:Ljava/lang/Integer;

.field private aCS:Ljava/lang/Integer;

.field private aCT:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/Time;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/st;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->aCR:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->aCS:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->aCT:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/st;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public setHour(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->aCR:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMinute(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->aCS:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSecond(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->aCT:Ljava/lang/Integer;

    return-object p0
.end method
