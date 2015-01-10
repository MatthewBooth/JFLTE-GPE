.class Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;
.super Ljava/lang/Object;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserNow(Z)V

    return-void
.end method
