.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method
