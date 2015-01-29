.class Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialTimePickerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method private constructor <init>(Landroid/widget/RadialTimePickerView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RadialTimePickerView;Landroid/widget/RadialTimePickerView$1;)V
    .locals 0
    .param p1    # Landroid/widget/RadialTimePickerView;
    .param p2    # Landroid/widget/RadialTimePickerView$1;

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;-><init>(Landroid/widget/RadialTimePickerView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1    # Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void
.end method
