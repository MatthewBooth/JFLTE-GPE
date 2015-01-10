.class Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field final synthetic val$lowLights:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->val$lowLights:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->val$lowLights:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
