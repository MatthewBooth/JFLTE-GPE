.class Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/FlingAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorProperties"
.end annotation


# instance fields
.field duration:J

.field interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/FlingAnimationUtils$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/FlingAnimationUtils$1;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;-><init>()V

    return-void
.end method
