.class Lcom/android/dialer/dialpad/DialpadFragment$1;
.super Landroid/telephony/PhoneStateListener;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->isDialpadChooserVisible()Z
    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$000(Lcom/android/dialer/dialpad/DialpadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V
    invoke-static {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$100(Lcom/android/dialer/dialpad/DialpadFragment;Z)V

    :cond_0
    return-void
.end method
