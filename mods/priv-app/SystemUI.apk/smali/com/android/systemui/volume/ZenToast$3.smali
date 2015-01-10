.class Lcom/android/systemui/volume/ZenToast$3;
.super Landroid/content/BroadcastReceiver;
.source "ZenToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenToast;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenToast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenToast$3;->this$0:Lcom/android/systemui/volume/ZenToast;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    # getter for: Lcom/android/systemui/volume/ZenToast;->ACTION_SHOW:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/ZenToast;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "zen"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "text"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/volume/ZenToast$3;->this$0:Lcom/android/systemui/volume/ZenToast;

    # invokes: Lcom/android/systemui/volume/ZenToast;->handleShow(ILjava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/android/systemui/volume/ZenToast;->access$100(Lcom/android/systemui/volume/ZenToast;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/android/systemui/volume/ZenToast;->ACTION_HIDE:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/ZenToast;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/ZenToast$3;->this$0:Lcom/android/systemui/volume/ZenToast;

    # invokes: Lcom/android/systemui/volume/ZenToast;->handleHide()V
    invoke-static {v2}, Lcom/android/systemui/volume/ZenToast;->access$200(Lcom/android/systemui/volume/ZenToast;)V

    goto :goto_0
.end method
