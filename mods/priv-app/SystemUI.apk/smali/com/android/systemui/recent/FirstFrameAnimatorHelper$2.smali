.class Lcom/android/systemui/recent/FirstFrameAnimatorHelper$2;
.super Ljava/lang/Object;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/FirstFrameAnimatorHelper;

.field final synthetic val$animation:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$2;->this$0:Lcom/android/systemui/recent/FirstFrameAnimatorHelper;

    iput-object p2, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$2;->val$animation:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$2;->val$animation:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$2;->this$0:Lcom/android/systemui/recent/FirstFrameAnimatorHelper;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
