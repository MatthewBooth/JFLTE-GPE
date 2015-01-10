.class Lcom/android/keyguard/KeyguardViewStateManager$4;
.super Ljava/lang/Object;
.source "KeyguardViewStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardViewStateManager;->showUsabilityHints()V
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager$4;->this$0:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager$4;->this$0:Lcom/android/keyguard/KeyguardViewStateManager;

    # getter for: Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->access$000(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->showUsabilityHint()V

    return-void
.end method
