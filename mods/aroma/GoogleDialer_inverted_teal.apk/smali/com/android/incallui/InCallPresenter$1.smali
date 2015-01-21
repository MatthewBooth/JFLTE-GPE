.class Lcom/android/incallui/InCallPresenter$1;
.super Landroid/telecom/Phone$Listener;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/telecom/Phone$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBringToForeground(Landroid/telecom/Phone;Z)V
    .locals 1
    .param p1    # Landroid/telecom/Phone;
    .param p2    # Z

    const-string v0, "Bringing UI to foreground."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p2}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 1
    .param p1    # Landroid/telecom/Phone;
    .param p2    # Landroid/telecom/Call;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallListener:Landroid/telecom/Call$Listener;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/telecom/Call$Listener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/telecom/Call;->addListener(Landroid/telecom/Call$Listener;)V

    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 1
    .param p1    # Landroid/telecom/Phone;
    .param p2    # Landroid/telecom/Call;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$1;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallListener:Landroid/telecom/Call$Listener;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/telecom/Call$Listener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/telecom/Call;->removeListener(Landroid/telecom/Call$Listener;)V

    return-void
.end method
