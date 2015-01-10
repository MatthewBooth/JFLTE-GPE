.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->startAppearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$202(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z

    return-void
.end method
