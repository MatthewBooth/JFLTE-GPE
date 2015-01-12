.class public Lcom/google/android/gms/reminders/model/Location$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aCv:Ljava/lang/Double;

.field private aCw:Ljava/lang/Double;

.field private aCx:Ljava/lang/Integer;

.field private aCy:Ljava/lang/Integer;

.field private aCz:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/Location;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/sl;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->aCv:Ljava/lang/Double;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->aCw:Ljava/lang/Double;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->aCx:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->aCy:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->aCz:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/sl;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDisplayAddress(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Location$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->aCz:Ljava/lang/String;

    return-object p0
.end method

.method public setLat(Ljava/lang/Double;)Lcom/google/android/gms/reminders/model/Location$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->aCv:Ljava/lang/Double;

    return-object p0
.end method

.method public setLng(Ljava/lang/Double;)Lcom/google/android/gms/reminders/model/Location$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->aCw:Ljava/lang/Double;

    return-object p0
.end method

.method public setLocationType(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Location$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->aCy:Ljava/lang/Integer;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Location$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setRadiusMeters(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Location$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Location$Builder;->aCx:Ljava/lang/Integer;

    return-object p0
.end method
