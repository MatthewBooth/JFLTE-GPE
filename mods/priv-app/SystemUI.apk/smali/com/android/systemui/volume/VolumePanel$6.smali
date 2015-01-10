.class Lcom/android/systemui/volume/VolumePanel$6;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->createSliders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;

.field final synthetic val$sc:Lcom/android/systemui/volume/VolumePanel$StreamControl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanel$6;->val$sc:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$6;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$6;->val$sc:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->toggle(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$1300(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    return-void
.end method
