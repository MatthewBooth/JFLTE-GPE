.class Lcom/android/keyguard/KeyguardWidgetFrame$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardWidgetFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardWidgetFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame$1;->this$0:Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame$1;->this$0:Lcom/android/keyguard/KeyguardWidgetFrame;

    # getter for: Lcom/android/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->access$000(Lcom/android/keyguard/KeyguardWidgetFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame$1;->this$0:Lcom/android/keyguard/KeyguardWidgetFrame;

    # invokes: Lcom/android/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->access$100(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame$1;->this$0:Lcom/android/keyguard/KeyguardWidgetFrame;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->access$002(Lcom/android/keyguard/KeyguardWidgetFrame;Z)Z

    :cond_0
    return-void
.end method
