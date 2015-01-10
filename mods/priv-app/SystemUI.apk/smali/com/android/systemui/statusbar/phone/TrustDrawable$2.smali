.class Lcom/android/systemui/statusbar/phone/TrustDrawable$2;
.super Ljava/lang/Object;
.source "TrustDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TrustDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$2;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1    # Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$2;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/android/systemui/statusbar/phone/TrustDrawable;->mCurInnerRadius:F
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->access$202(Lcom/android/systemui/statusbar/phone/TrustDrawable;F)F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$2;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->invalidateSelf()V

    return-void
.end method
