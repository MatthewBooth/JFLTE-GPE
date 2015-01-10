.class Lcom/android/keyguard/SlidingChallengeLayout$6;
.super Ljava/lang/Object;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/SlidingChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/keyguard/SlidingChallengeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout$6;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$6;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$6;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    :cond_0
    return-void
.end method
