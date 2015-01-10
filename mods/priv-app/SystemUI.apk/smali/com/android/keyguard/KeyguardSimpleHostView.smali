.class public Lcom/android/keyguard/KeyguardSimpleHostView;
.super Lcom/android/keyguard/KeyguardViewBase;
.source "KeyguardSimpleHostView.java"


# instance fields
.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/KeyguardSimpleHostView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimpleHostView$1;-><init>(Lcom/android/keyguard/KeyguardSimpleHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimpleHostView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimpleHostView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimpleHostView;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardSimpleHostView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimpleHostView;->isVisibleToUser()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimpleHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    return-void
.end method

.method public getUserActivityTimeout()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
