.class Lcom/android/keyguard/KeyguardHostView$7;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$7;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$7;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$700(Lcom/android/keyguard/KeyguardHostView;)V

    return-void
.end method
