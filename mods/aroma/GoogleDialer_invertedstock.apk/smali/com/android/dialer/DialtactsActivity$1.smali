.class Lcom/android/dialer/DialtactsActivity$1;
.super Lcom/android/phone/common/animation/AnimationListenerAdapter;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Lcom/android/phone/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    # invokes: Lcom/android/dialer/DialtactsActivity;->commitDialpadFragmentHide()V
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$000(Lcom/android/dialer/DialtactsActivity;)V

    return-void
.end method
