.class Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartKeyguardExitAnimParams"
.end annotation


# instance fields
.field fadeoutDuration:J

.field startTime:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1
    .param p1    # J
    .param p3    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iput-wide p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    return-void
.end method

.method synthetic constructor <init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$1;)V
    .locals 1
    .param p1    # J
    .param p3    # J
    .param p5    # Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJ)V

    return-void
.end method
