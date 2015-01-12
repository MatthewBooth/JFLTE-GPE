.class Lcom/android/dialer/widget/ActionBarController$1;
.super Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;
.source "ActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/widget/ActionBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/widget/ActionBarController;


# direct methods
.method constructor <init>(Lcom/android/dialer/widget/ActionBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/widget/ActionBarController$1;->this$0:Lcom/android/dialer/widget/ActionBarController;

    invoke-direct {p0}, Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController$1;->this$0:Lcom/android/dialer/widget/ActionBarController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    return-void
.end method

.method public onAnimationEnd()V
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/widget/ActionBarController$1;->this$0:Lcom/android/dialer/widget/ActionBarController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V

    return-void
.end method
