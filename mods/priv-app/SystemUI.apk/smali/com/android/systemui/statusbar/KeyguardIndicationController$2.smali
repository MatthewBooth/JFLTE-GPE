.class Lcom/android/systemui/statusbar/KeyguardIndicationController$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    # invokes: Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_0
    return-void
.end method
