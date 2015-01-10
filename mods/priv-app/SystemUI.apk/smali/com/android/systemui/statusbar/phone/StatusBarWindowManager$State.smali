.class Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;
.super Ljava/lang/Object;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field bouncerShowing:Z

.field keyguardFadingAway:Z

.field keyguardNeedsInput:Z

.field keyguardOccluded:Z

.field keyguardShowing:Z

.field keyguardUserActivityTimeout:J

.field qsExpanded:Z

.field sViewCoverShowing:Z

.field statusBarExpanded:Z

.field statusBarFocusable:Z

.field statusBarState:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
