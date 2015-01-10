.class Lcom/android/keyguard/KeyguardViewStateManager$3;
.super Ljava/lang/Object;
.source "KeyguardViewStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewStateManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager$3;->this$0:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager$3;->this$0:Lcom/android/keyguard/KeyguardViewStateManager;

    # getter for: Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->access$100(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager$3;->this$0:Lcom/android/keyguard/KeyguardViewStateManager;

    # getter for: Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->access$100(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    :cond_0
    return-void
.end method
