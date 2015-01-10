.class Lcom/android/keyguard/MultiPaneChallengeLayout$1;
.super Ljava/lang/Object;
.source "MultiPaneChallengeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MultiPaneChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MultiPaneChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$1;->this$0:Lcom/android/keyguard/MultiPaneChallengeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$1;->this$0:Lcom/android/keyguard/MultiPaneChallengeLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->hideBouncer()V

    return-void
.end method
