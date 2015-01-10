.class Lcom/android/systemui/volume/VolumeUI$3;
.super Ljava/lang/Object;
.source "VolumeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$3;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$3;->this$0:Lcom/android/systemui/volume/VolumeUI;

    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$3;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$3;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mDismissDelay:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeUI;->access$800(Lcom/android/systemui/volume/VolumeUI;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    return-void
.end method
