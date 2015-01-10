.class public interface abstract Lcom/android/keyguard/ChallengeLayout;
.super Ljava/lang/Object;
.source "ChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;
    }
.end annotation


# virtual methods
.method public abstract getBouncerAnimationDuration()I
.end method

.method public abstract isBouncing()Z
.end method

.method public abstract isChallengeOverlapping()Z
.end method

.method public abstract isChallengeShowing()Z
.end method

.method public abstract setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V
.end method

.method public abstract showBouncer()V
.end method
