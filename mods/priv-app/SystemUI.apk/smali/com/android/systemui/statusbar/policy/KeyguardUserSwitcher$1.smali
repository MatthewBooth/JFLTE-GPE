.class Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;
.super Ljava/lang/Object;
.source "KeyguardUserSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startAppearAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    # getter for: Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->access$000(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    # getter for: Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->access$000(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method
