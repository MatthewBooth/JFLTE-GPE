.class Lcom/android/systemui/volume/VolumeUI$2;
.super Landroid/database/ContentObserver;
.source "VolumeUI.java"


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
.method constructor <init>(Lcom/android/systemui/volume/VolumeUI;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$2;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/systemui/volume/VolumeUI;->access$600()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$2;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # invokes: Lcom/android/systemui/volume/VolumeUI;->updateController()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)V

    :cond_0
    return-void
.end method
