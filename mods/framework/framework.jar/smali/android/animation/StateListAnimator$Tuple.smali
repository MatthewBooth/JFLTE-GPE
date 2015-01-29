.class public Landroid/animation/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tuple"
.end annotation


# instance fields
.field final mAnimator:Landroid/animation/Animator;

.field final mSpecs:[I


# direct methods
.method private constructor <init>([ILandroid/animation/Animator;)V
    .locals 0
    .param p1    # [I
    .param p2    # Landroid/animation/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    iput-object p2, p0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method synthetic constructor <init>([ILandroid/animation/Animator;Landroid/animation/StateListAnimator$1;)V
    .locals 0
    .param p1    # [I
    .param p2    # Landroid/animation/Animator;
    .param p3    # Landroid/animation/StateListAnimator$1;

    invoke-direct {p0, p1, p2}, Landroid/animation/StateListAnimator$Tuple;-><init>([ILandroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method public getAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public getSpecs()[I
    .locals 1

    iget-object v0, p0, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    return-object v0
.end method
