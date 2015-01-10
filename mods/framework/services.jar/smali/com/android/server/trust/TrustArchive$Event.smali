.class Lcom/android/server/trust/TrustArchive$Event;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Event"
.end annotation


# instance fields
.field final agent:Landroid/content/ComponentName;

.field final duration:J

.field final elapsedTimestamp:J

.field final managingTrust:Z

.field final message:Ljava/lang/String;

.field final type:I

.field final userId:I

.field final userInitiated:Z


# direct methods
.method private constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZ)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/ComponentName;
    .param p4    # Ljava/lang/String;
    .param p5    # J
    .param p7    # Z
    .param p8    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/trust/TrustArchive$Event;->type:I

    iput p2, p0, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    iput-object p3, p0, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    iput-object p4, p0, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    iput-boolean p7, p0, Lcom/android/server/trust/TrustArchive$Event;->userInitiated:Z

    iput-boolean p8, p0, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    return-void
.end method

.method synthetic constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZLcom/android/server/trust/TrustArchive$1;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/ComponentName;
    .param p4    # Ljava/lang/String;
    .param p5    # J
    .param p7    # Z
    .param p8    # Z
    .param p9    # Lcom/android/server/trust/TrustArchive$1;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZ)V

    return-void
.end method
