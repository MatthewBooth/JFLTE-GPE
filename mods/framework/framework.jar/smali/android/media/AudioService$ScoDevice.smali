.class Landroid/media/AudioService$ScoDevice;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoDevice"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public device:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioService$ScoDevice;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .param p1    # Landroid/media/AudioService;
    .param p2    # Landroid/media/AudioService$1;

    invoke-direct {p0, p1}, Landroid/media/AudioService$ScoDevice;-><init>(Landroid/media/AudioService;)V

    return-void
.end method
