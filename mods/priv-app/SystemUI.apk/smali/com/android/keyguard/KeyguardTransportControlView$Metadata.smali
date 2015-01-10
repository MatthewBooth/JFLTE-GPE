.class Lcom/android/keyguard/KeyguardTransportControlView$Metadata;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Metadata"
.end annotation


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private duration:J

.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView$Metadata;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView$Metadata;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView$Metadata;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J
    .locals 2
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;J)J
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView$Metadata;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardTransportControlView$Metadata;
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata[artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
