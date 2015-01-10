.class final Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundColorAlpha(Landroid/view/View;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$b:I

.field final synthetic val$g:I

.field final synthetic val$r:I

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$target:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$r:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$g:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$target:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$r:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$g:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$b:I

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
