.class Lcom/android/keyguard/SlidingChallengeLayout$4;
.super Ljava/lang/Object;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout$4;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$4;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->completeChallengeScroll()V

    return-void
.end method
