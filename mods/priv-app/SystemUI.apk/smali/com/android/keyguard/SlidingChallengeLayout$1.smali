.class final Lcom/android/keyguard/SlidingChallengeLayout$1;
.super Landroid/util/FloatProperty;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/keyguard/SlidingChallengeLayout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/keyguard/SlidingChallengeLayout;)Ljava/lang/Float;
    .locals 1
    .param p1    # Lcom/android/keyguard/SlidingChallengeLayout;

    iget v0, p1, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$1;->get(Lcom/android/keyguard/SlidingChallengeLayout;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/keyguard/SlidingChallengeLayout;F)V
    .locals 0
    .param p1    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p2    # F

    iput p2, p1, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAlpha:F

    invoke-virtual {p1}, Lcom/android/keyguard/SlidingChallengeLayout;->invalidate()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # F

    check-cast p1, Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/SlidingChallengeLayout$1;->setValue(Lcom/android/keyguard/SlidingChallengeLayout;F)V

    return-void
.end method
