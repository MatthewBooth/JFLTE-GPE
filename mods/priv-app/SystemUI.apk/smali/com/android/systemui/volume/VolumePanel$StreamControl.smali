.class Lcom/android/systemui/volume/VolumePanel$StreamControl;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamControl"
.end annotation


# instance fields
.field controller:Landroid/media/session/MediaController;

.field group:Landroid/view/ViewGroup;

.field icon:Landroid/widget/ImageView;

.field iconMuteRes:I

.field iconRes:I

.field iconSuppressedRes:I

.field seekbarView:Landroid/widget/SeekBar;

.field streamType:I

.field suppressorView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/volume/VolumePanel;
    .param p2    # Lcom/android/systemui/volume/VolumePanel$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel$StreamControl;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    return-void
.end method
