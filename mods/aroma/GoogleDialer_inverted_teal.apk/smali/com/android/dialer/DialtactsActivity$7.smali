.class Lcom/android/dialer/DialtactsActivity$7;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/DialtactsActivity;->setupActivityOverlay()V
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

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$400(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    # invokes: Lcom/android/dialer/DialtactsActivity;->maybeExitSearchUi()Z
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$1200(Lcom/android/dialer/DialtactsActivity;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
