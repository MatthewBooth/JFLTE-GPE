.class Lcom/android/systemui/qs/QSPanel$H;
.super Landroid/os/Handler;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSPanel;
    .param p2    # Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSPanel$Record;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_0
    # invokes: Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    invoke-static {v2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->access$1000(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui/qs/QSPanel;->handleSetTileVisibility(Landroid/view/View;I)V
    invoke-static {v1, v0, v2}, Lcom/android/systemui/qs/QSPanel;->access$1100(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V

    goto :goto_1
.end method
