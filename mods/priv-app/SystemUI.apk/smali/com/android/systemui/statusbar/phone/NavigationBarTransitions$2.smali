.class Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;
.super Ljava/lang/Object;
.source "NavigationBarTransitions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    # invokes: Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V
    invoke-static {v0, v3, v3, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->access$000(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZZ)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0
.end method
